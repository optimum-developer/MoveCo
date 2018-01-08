class ChangeBedroomAndTrucksToBeString < ActiveRecord::Migration[5.1]
  def change
    change_column :book_online_details, :number_of_bedrooms, :string
    change_column :book_online_details, :size_of_truck, :string
  end
end
