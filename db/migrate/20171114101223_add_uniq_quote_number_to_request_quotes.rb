class AddUniqQuoteNumberToRequestQuotes < ActiveRecord::Migration[5.1]
  def change
    add_column :request_quotes, :unique_quote_number, :string
  end
end
