class Api::ParamsExamplesController < ApplicationController

	def query_params_method
		@my_message = params["my_message"]
		@second_message = params["second_message"]
		render 'query_params.json.jbuilder'
	end

end
