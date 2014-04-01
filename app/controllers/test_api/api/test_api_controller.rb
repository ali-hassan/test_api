require_dependency "test_api/application_controller"

module TestApi
  class Api::TestApiController < ApplicationController
    def immunization_status
      unless params[:person_id].nil? && params[:state].nil?
        @result = { status: "out-of-date",severity: "high" }
        respond_to do |format|
          format.html { redirect_to @result, notice: 'response.' }
          format.json { render json: {:response =>  @result }}
        end
      else
        @result = { result: "invalid request" }
        respond_to do |format|
          format.html { redirect_to @result, notice: 'response.' }
          format.json { render json: {:response =>  @result }}
        end
      end
      #  testing = mock(Object.new)
      #  testing(person_id: params[:person_id], state: "f1")
      #  mock(Store)
      #end
    end
  end
end
