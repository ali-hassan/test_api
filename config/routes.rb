TestApi::Engine.routes.draw do
  root to:  "test_api#api_test"
  get "/immunization_status" => "test_api#immunization_status"
end
