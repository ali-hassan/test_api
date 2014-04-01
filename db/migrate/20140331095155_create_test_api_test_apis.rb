class CreateTestApiTestApis < ActiveRecord::Migration
  def change
    create_table :test_api_test_apis do |t|

      t.timestamps
    end
  end
end
