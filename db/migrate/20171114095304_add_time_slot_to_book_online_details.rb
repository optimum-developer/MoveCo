class AddTimeSlotToBookOnlineDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :book_online_details, :time_slot, :string
  end
end
