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
        if params[:sleep_start] && params[:sleep_end]
            if params[:sleep_start2] && params[:sleep_end2]
                if params[:sleep_start3] && params[:sleep_end3]
                    log.sleeps.new(start_time: params[:sleep_start], end_time: params[:sleep_end]).save
                    log.sleeps.new(start_time: params[:sleep_start2], end_time: params[:sleep_end2]).save
                    log.sleeps.new(start_time: params[:sleep_start3], end_time: params[:sleep_end3]).save
                end
            else
                log.sleeps.new(start_time: params[:sleep_start], end_time: params[:sleep_end]).save
                log.sleeps.new(start_time: params[:sleep_start2], end_time: params[:sleep_end2]).save
            end
        else
            log.sleeps.new(start_time: params[:sleep_start], end_time: params[:sleep_end]).save

        end

        # if params[:time] && params[:name]?
        #     if params[:time2] && params[:name2]?
        #         if params[:time3] && params[:name3]?
        #             log.sleeps.new(time: params[:name], end_time: params[:name]).save
        #             log.sleeps.new(time: params[:name2], end_time: params[:name2]).save
        #             log.sleeps.new(time: params[:name3], end_time: params[:name3]).save
        #         end
        #     else
        #         log.sleeps.new(time: params[:name], end_time: params[:name]).save
        #         log.sleeps.new(time: params[:name2], end_time: params[:name2]).save
        #     end
        # else
        #     log.sleeps.new(time: params[:name], end_time: params[:name]).save

        # end

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
