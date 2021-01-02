package storage

import (
	"context"
	"time"

	"github.com/hatlonely/go-kit/rpcx"
	"github.com/pkg/errors"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/bson/primitive"
	mopt "go.mongodb.org/mongo-driver/mongo/options"
	"google.golang.org/grpc/codes"

	"github.com/hatlonely/rpc-cicd/api/gen/go/api"
)

func (s *CICDStorage) GetSubTask(ctx context.Context, id string) (*api.SubTask, error) {
	collection := s.mongoCli.Database(s.options.Database).Collection(s.options.SubTaskCollection)
	objectID, err := primitive.ObjectIDFromHex(id)
	if err != nil {
		return nil, rpcx.NewError(codes.InvalidArgument, "InvalidObjectID", "object id is not valid", err)
	}
	mongoCtx, cancel := context.WithTimeout(ctx, s.options.Timeout)
	defer cancel()
	var subTask api.SubTask
	if err := collection.FindOne(mongoCtx, bson.M{"_id": objectID}).Decode(&subTask); err != nil {
		return nil, errors.Wrap(err, "mongo.Collection.FindOne failed")
	}
	return &subTask, nil
}

func (s *CICDStorage) DelSubTask(ctx context.Context, id string) error {
	collection := s.mongoCli.Database(s.options.Database).Collection(s.options.SubTaskCollection)
	objectID, err := primitive.ObjectIDFromHex(id)
	if err != nil {
		return rpcx.NewError(codes.InvalidArgument, "InvalidObjectID", "object id is not valid", err)
	}
	mongoCtx, cancel := context.WithTimeout(ctx, s.options.Timeout)
	defer cancel()
	res, err := collection.DeleteOne(mongoCtx, bson.M{"_id": objectID})
	if err != nil {
		return errors.Wrap(err, "mongo.Collection.DeleteOne failed")
	}
	rpcx.CtxSet(ctx, "DeleteOneRes", res)
	return nil
}

func (s *CICDStorage) PutSubTask(ctx context.Context, subTask *api.SubTask) (string, error) {
	collection := s.mongoCli.Database(s.options.Database).Collection(s.options.SubTaskCollection)
	mongoCtx, cancel := context.WithTimeout(ctx, s.options.Timeout)
	defer cancel()
	subTask.CreateAt = int32(time.Now().Unix())
	res, err := collection.InsertOne(mongoCtx, subTask)
	if err != nil {
		return "", errors.Wrap(err, "mongo.Collection.InsertOne failed")
	}
	rpcx.CtxSet(ctx, "InsertOneRes", res)
	return res.InsertedID.(primitive.ObjectID).Hex(), nil
}

func (s *CICDStorage) UpdateSubTask(ctx context.Context, subTask *api.SubTask) error {
	collection := s.mongoCli.Database(s.options.Database).Collection(s.options.SubTaskCollection)
	objectID, err := primitive.ObjectIDFromHex(subTask.Id)
	if err != nil {
		return rpcx.NewError(codes.InvalidArgument, "InvalidObjectID", "object id is not valid", err)
	}
	mongoCtx, cancel := context.WithTimeout(ctx, s.options.Timeout)
	defer cancel()
	id := subTask.Id
	subTask.Id = ""
	defer func() {
		subTask.Id = id
	}()
	subTask.UpdateAt = int32(time.Now().Unix())
	res, err := collection.UpdateOne(mongoCtx, bson.M{"_id": objectID}, bson.M{"$set": subTask})
	if err != nil {
		return errors.Wrap(err, "mongo.Collection.UpdateOne failed")
	}
	rpcx.CtxSet(ctx, "UpdateOneRes", res)
	return nil
}

func (s *CICDStorage) ListSubTask(ctx context.Context, offset int64, limit int64) ([]*api.SubTask, error) {
	collection := s.mongoCli.Database(s.options.Database).Collection(s.options.SubTaskCollection)
	mongoCtx, cancel := context.WithTimeout(ctx, s.options.Timeout)
	defer cancel()
	res, err := collection.Find(mongoCtx, bson.M{}, mopt.Find().SetLimit(limit).SetSkip(offset))
	if err != nil {
		return nil, errors.Wrap(err, "mongo.Collection.Find failed")
	}
	defer res.Close(ctx)
	var subTasks []*api.SubTask
	if err := res.All(mongoCtx, &subTasks); err != nil {
		return nil, errors.Wrap(err, "mongo.Collection.Find.All failed")
	}
	return subTasks, nil
}

func (s *CICDStorage) GetSubTaskByIDs(ctx context.Context, ids []string) ([]*api.SubTask, error) {
	if len(ids) == 0 {
		return nil, nil
	}

	collection := s.mongoCli.Database(s.options.Database).Collection(s.options.SubTaskCollection)

	var objectIDs []primitive.ObjectID
	for _, i := range ids {
		objectID, err := primitive.ObjectIDFromHex(i)
		if err != nil {
			return nil, rpcx.NewError(codes.InvalidArgument, "InvalidObjectID", "object id is not valid", err)
		}
		objectIDs = append(objectIDs, objectID)
	}

	mongoCtx, cancel := context.WithTimeout(ctx, s.options.Timeout)
	defer cancel()
	res, err := collection.Find(mongoCtx, bson.M{"_id": bson.M{"$in": objectIDs}})
	if err != nil {
		return nil, errors.Wrap(err, "mongo.Collection.Find failed")
	}
	var subTasks []*api.SubTask
	if err := res.All(mongoCtx, &subTasks); err != nil {
		return nil, errors.Wrap(err, "mongo.Collection.Find.All failed")
	}

	return subTasks, nil
}
