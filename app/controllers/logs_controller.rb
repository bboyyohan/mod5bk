class LogsController < ApplicationController
    def index
        logs = Log.all 
        render json: logs
    end 

    # def create
    #     log = Log.new(log_params)
    #     log.save
    #     log.sleeps.new(quantity: params[:sleeps])
    #     log.meals.new(quantity: params[:meals])
    #     render json: log.as_json(:include => [:sleeps, :meals])
    # end 
    def create
        # byebug
        log = Log.new(log_params)
        log.save
        log.sleeps.new(start_time: params[:sleep_start], end_time: params[:sleep_end]).save
        log.meals.new(time: params[:meal_time], name: params[:meal_name]).save
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

    # def update
    #     # byebug
    #     log = Log.find(params[:id])
    #     log.sleeps.update(quantity: params[:sleeps])
    #     log.meals.update(quantity: params[:meals])
    #     log.update(log_params)
    #     # log.update(log_params)
    #     render json: log.as_json(:include => [:sleeps, :meals])
    # end 
    def update
        # byebug
        log = Log.find(params[:id])
        log.sleeps.update(start_time: params[:sleep_start], end_time: params[:sleep_end])
        log.meals.update(time: params[:meal_time], name: params[:meal_name])
        log.update(log_params)
        # log.update(log_params)
        render json: log.as_json(:include => [:sleeps, :meals])
    end 

    def destroy
        log = Log.find(params[:id])
        log.destroy
    end 

    private

    # def log_params
    #     params.require(:log).permit(:user_id, :title, :start, :water, :mood, :note, sleeps: [] , meals: [])
    # end 

    def log_params
        params.require(:log).permit(:user_id, :title, :start, :water, :mood, :note)
    end 
end
