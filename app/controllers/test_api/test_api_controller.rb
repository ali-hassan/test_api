require_dependency "test_api/application_controller"

module TestApi
  class TestApiController < ApplicationController
    def api_test
      @result = HTTParty.get('http://localhost:3001/test_api/immunization_status.json?person_id=123&state=fl')
      respond_to do |format|
        format.html { render json: {:response =>  @result } }
        format.json { render json: {:response =>  @result }}
      end
    end
    def  immunization_status
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
    end
  end
end
