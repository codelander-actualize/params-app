class Api::ParamsExamplesController < ApplicationController

	def query_params_method
		@my_message = params["my_message"]
		@second_message = params["second_message"]
		render 'query_params.json.jbuilder'
	end

	def name_method
		@name = params["name"]
		if @name.upcase.starts_with?("A")
			@message = "Hey your name starts with an A!"
		end
		render 'name.json.jbuilder'
	end

	def guess_query_method
		winning_num = 36
		@user_guess = params["guess"].to_i
		if @user_guess > winning_num
			@message = "Guess lower!"
		elsif @user_guess < winning_num
			@message = "Guess higher!"
		else
			@message = "You win!"
		end
		render 'guess_query.json.jbuilder'
	end

	def segment_params_method
		@message = params["purple_hippo"]
		render 'segment_params.json.jbuilder'
	end

	def body_params
		user_input = params[:secret_info]
		@message = "The secret info is #{user_input}"
		render 'body_params.json.jbuilder'
	end

end
