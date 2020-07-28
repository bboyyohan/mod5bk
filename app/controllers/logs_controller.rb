class LogsController < ApplicationController
    def index
        logs = Log.all 
        render json: logs
    end 

    def create
        log = Log.new(log_params)
        log.save
        log.sleeps.new(quantity: params[:sleeps])
        log.meals.new(quantity: params[:meals])
        render json: log.as_json(:include => [:sleeps, :meals])
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
        # byebug
        log = Log.find(params[:id])
        log.sleeps.update(quantity: params[:sleeps])
        log.meals.update(quantity: params[:meals])
        log.update(log_params)
        # log.update(log_params)
        render json: log.as_json(:include => [:sleeps, :meals])
    end 

    def destroy
        log = Log.find(params[:id])
        log.destroy
    end 

    private

    def log_params
        params.require(:log).permit(:user_id, :title, :start, :water, :mood, :note, sleeps: [] , meals: [])
    end 
end
