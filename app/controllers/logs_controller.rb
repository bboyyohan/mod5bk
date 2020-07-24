class LogsController < ApplicationController
    def index
        logs = Log.all 
        render json: logs
    end 

    def create
        log = Log.new(log_params)
        log.save
        render json: log
    end 

    def show
        log = Log.find(params[:id])
        render json: log
    end 

    def edit
        log = Log.find(params[:id])
        render json: log
    end

    def update
        log = Log.find(params[:id])
        log.update(log_params)
        render json: log 
    end 

    def destroy
        log = Log.find(params[:id])
        log.destroy
    end 

    private

    def log_params
        params.require(:log).permit(:user_id, :title, :start, :water, :mood, :note)
    end 
end
