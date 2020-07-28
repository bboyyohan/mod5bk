class Api::V1::AuthController < ApplicationController

    def create 
        # byebug
        user = User.find_by(username: params['username'], password_digest: params['password'])
        
        if user 
            render json: user.as_json(exclude: [:password_digest], include: {logs: {include: [:sleeps, :meals]}})
            #{message: "log in", user_logs: user.logs, user_data: user, error: false}
            

        else
            render json: {message: 'wrong id or pass', error: true}
        end
    end

    def profile

    end 

end