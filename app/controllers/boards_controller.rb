class BoardsController < ApplicationController
    # GET /boards
    def index
      boards = Board.all
      render json: boards, include: :tasks
    end
  
    # GET /boards/id
    def show
      board = Board.find_by(id: params[:id])
      render json: board, include: :tasks
    end
  
    # POST /boards
    def create
      board = Board.create!(board_params)
      render json: board, status: 201
    end
  
    # PATCH/PUT /boards/id
    def update
      board = Board.find_by(id: params[:id])
      board.update!(board_params)
      render json: board
    end
  
    # DELETE /boards/id
    def destroy
      board = Board.find_by(id: params[:id])
      board.destroy
      head :no_content
    end
  
    private
  
    def board_params
      params.require(:board).permit(:name, :project_id)
    end
  end
  