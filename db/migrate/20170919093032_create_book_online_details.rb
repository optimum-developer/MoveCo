class CreateBookOnlineDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :book_online_details do |t|
	    t.string :first_name
	    t.string :last_name
		t.string :email
		t.datetime :date_to_move
		t.integer :home_phone_number
		t.integer :mobile_phone_number

		# t.string :description
		t.string :move_from
		t.string :move_to
		t.string :city
		t.string :country
		t.integer :zipcode
		t.datetime :time_slot
		t.integer :number_of_bedrooms
		t.float :size_of_truck





      	t.timestamps
    end
  end
end
