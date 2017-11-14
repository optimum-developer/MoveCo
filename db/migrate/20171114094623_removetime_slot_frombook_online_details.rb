class RemovetimeSlotFrombookOnlineDetails < ActiveRecord::Migration[5.1]
  def change
  	remove_column :book_online_details, :time_slot
  end
end
