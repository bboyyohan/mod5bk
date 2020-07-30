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

        if params[:meal_name] && params[:meal_time]
            if params[:meal_name2] && params[:meal_time2]
                if params[:meal_name3] && params[:meal_time3]
                    log.meals.new(name: params[:meal_name], time: params[:meal_time]).save
                    log.meals.new(name: params[:meal_name2], time: params[:meal_time2]).save
                    log.meals.new(name: params[:meal_name3], time: params[:meal_time3]).save
                end
            else
                log.meals.new(name: params[:meal_name], time: params[:meal_time]).save
                log.meals.new(name: params[:meal_name2], time: params[:meal_time2]).save
            end
        else
            log.meals.new(name: params[:meal_name], time: params[:meal_time]).save

        end

        # log.meals.new(name: params[:meal_name], time: params[:meal_time]).save
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

    # def update
    #     # byebug
    #     log = Log.find(params[:id])
    #     log.sleeps.update(start_time: params[:sleep_start], end_time: params[:sleep_end])
    #     log.meals.update(time: params[:meal_time], name: params[:meal_name])
    #     log.update(log_params)
    #     # log.update(log_params)
    #     render json: log.as_json(:include => [:sleeps, :meals])
    # end 

    def update
        log = Log.find(params[:id])

        if params[:sleep_start] && params[:sleep_end]
            if params[:sleep_start2] && params[:sleep_end2]
                if params[:sleep_start3] && params[:sleep_end3]
                    log.sleeps.update(start_time: params[:sleep_start], end_time: params[:sleep_end])
                    log.sleeps.update(start_time: params[:sleep_start2], end_time: params[:sleep_end2])
                    log.sleeps.update(start_time: params[:sleep_start3], end_time: params[:sleep_end3])
                end
            else
                log.sleeps.update(start_time: params[:sleep_start], end_time: params[:sleep_end])
                log.sleeps.update(start_time: params[:sleep_start2], end_time: params[:sleep_end2])
            end
        else
            log.sleeps.update(start_time: params[:sleep_start], end_time: params[:sleep_end])

        end

        if params[:meal_name] && params[:meal_time]
            if params[:meal_name2] && params[:meal_time2]
                if params[:meal_name3] && params[:meal_time3]
                    log.meals.update(name: params[:meal_name], time: params[:meal_time])
                    log.meals.update(name: params[:meal_name2], time: params[:meal_time2])
                    log.meals.update(name: params[:meal_name3], time: params[:meal_time3])
                end
            else
                log.meals.update(name: params[:meal_name], time: params[:meal_time])
                log.meals.update(name: params[:meal_name2], time: params[:meal_time2])
            end
        else
            log.meals.update(name: params[:meal_name], time: params[:meal_time])

        end
        log.update(log_params)
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
