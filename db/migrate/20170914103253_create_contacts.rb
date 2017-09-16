class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :message
      # t.datetime :date_to_move
      # t.integer :phone_number
      t.timestamps
    end
  end
end
