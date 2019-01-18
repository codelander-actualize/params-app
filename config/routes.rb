Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  	get "/query_params_url" => "params_examples#query_params_method"

  	get "/name_url" => "params_examples#name_method"

  	get "/guess_query_url" => "params_examples#guess_query_method"

  	get "/segment_params_url/:purple_hippo" => "params_examples#segment_params_method"

  	get "/guess_segment/:guess" => "params_examples#guess_query_method"

  	post "/body_params" => "params_examples#body_params"

  end
end
