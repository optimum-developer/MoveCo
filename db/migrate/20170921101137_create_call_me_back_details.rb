class CreateCallMeBackDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :call_me_back_details do |t|
      t.string :phone_number

      t.timestamps
    end
  end
end
