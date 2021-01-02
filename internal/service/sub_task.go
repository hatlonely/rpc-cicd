package service

import (
	"context"

	"github.com/hatlonely/rpc-cicd/api/gen/go/api"
)

func (s *CICDService) GetSubTask(ctx context.Context, req *api.GetSubTaskReq) (*api.SubTask, error) {
	return s.storage.GetSubTask(ctx, req.Id)
}

func (s *CICDService) DelSubTask(ctx context.Context, req *api.DelSubTaskReq) (*api.DelSubTaskRes, error) {
	return &api.DelSubTaskRes{Id: req.Id}, s.storage.DelSubTask(ctx, req.Id)
}

func (s *CICDService) PutSubTask(ctx context.Context, req *api.PutSubTaskReq) (*api.PutSubTaskRes, error) {
	id, err := s.storage.PutSubTask(ctx, req.SubTask)
	if err != nil {
		return nil, err
	}
	return &api.PutSubTaskRes{Id: id}, nil
}

func (s *CICDService) UpdateSubTask(ctx context.Context, req *api.UpdateSubTaskReq) (*api.UpdateSubTaskRes, error) {
	return &api.UpdateSubTaskRes{Id: req.SubTask.Id}, s.storage.UpdateSubTask(ctx, req.SubTask)
}

func (s *CICDService) ListSubTask(ctx context.Context, req *api.ListSubTaskReq) (*api.ListSubTaskRes, error) {
	res, err := s.storage.ListSubTask(ctx, req.Offset, req.Limit)
	if err != nil {
		return nil, err
	}
	return &api.ListSubTaskRes{SubTasks: res}, nil
}
