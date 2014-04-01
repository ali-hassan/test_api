Rails.application.routes.draw do
  mount TestApi::Engine => "/test_api"
  #namespace :api do
  #  resources :test_api do
  #    collection do
  #      get :immunization_status
  #    end
  #  end
  #end
  #
  #resources :test_api do
  #  collection do
  #    get :api_test
  #  end
  #end

end
