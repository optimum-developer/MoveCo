class ChangeIntegerLimitInRequestTable < ActiveRecord::Migration[5.1]
  def change
     change_column :request_quotes, :phone_number, :integer, limit: 8
  end
end
