module TestApi
  module Test
    class TestApiResult
      def test_api
        response = HTTParty.get('http://localhost:3010/api/test_api/immunization_status.json?person_id=123&state=fl')
        response
      end
    end
  end
end
