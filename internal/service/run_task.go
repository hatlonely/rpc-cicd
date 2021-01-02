package service

import (
	"context"
	"time"

	"github.com/hatlonely/rpc-cicd/api/gen/go/api"
	"github.com/hatlonely/rpc-cicd/internal/storage"
)

func (s *CICDService) RunTask(ctx context.Context, req *api.RunTaskReq) (*api.RunTaskRes, error) {
	job := api.Job{
		TaskID:   req.TaskID,
		Status:   storage.JobStatusWaiting,
		CreateAt: int32(time.Now().Unix()),
	}

	jobID, err := s.storage.PutJob(ctx, &job)
	if err != nil {
		return nil, err
	}

	return &api.RunTaskRes{JobID: jobID}, nil
}

func (s *CICDService) GetSubTasks(ctx context.Context, req *api.GetSubTasksReq) (*api.ListSubTaskRes, error) {
	res, err := s.storage.GetSubTaskByIDs(ctx, req.Ids)
	if err != nil {
		return nil, err
	}

	return &api.ListSubTaskRes{SubTasks: res}, nil
}

func (s *CICDService) GetVariables(ctx context.Context, req *api.GetVariablesReq) (*api.ListVariableRes, error) {
	res, err := s.storage.GetVariableByIDs(ctx, req.Ids)
	if err != nil {
		return nil, err
	}

	return &api.ListVariableRes{Variables: res}, nil
}
