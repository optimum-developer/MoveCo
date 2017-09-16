class CreateRequestQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :request_quotes do |t|
    	t.string :name
    	t.string :email
    	t.datetime :date_to_move
    	t.integer :phone_number
    	t.string :description
    	t.string :move_from
    	t.string :move_to

      t.timestamps
    end
  end
end
