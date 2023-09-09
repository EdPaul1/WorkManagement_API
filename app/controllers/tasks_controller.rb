class TasksController < ApplicationController
    # GET /tasks
    def index
      tasks = Task.all
      render json: tasks
    end
  
    # GET /tasks/id
    def show
      task = Task.find_by(id: params[:id])
      render json: task
    end
  
    # POST /tasks
    def create
      task = Task.create!(task_params)
      render json: task, status: 201
    end
  
    # PATCH/PUT /tasks/id
    def update
      task = Task.find_by(id: params[:id])
      task.update!(task_params)
      render json: task
    end
  
    # DELETE /tasks/id
    def destroy
      task = Task.find_by(id: params[:id])
      task.destroy
      head :no_content
    end
  
    private
  
    def task_params
      params.require(:task).permit(:name, :status, :priority, :completed, :board_id, :due_date, :description)
    end
  end
  