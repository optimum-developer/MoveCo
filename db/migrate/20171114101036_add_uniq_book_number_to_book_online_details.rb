class AddUniqBookNumberToBookOnlineDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :book_online_details, :unique_book_number, :string
  end
end
