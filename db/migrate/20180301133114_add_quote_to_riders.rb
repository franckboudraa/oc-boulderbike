class AddQuoteToRiders < ActiveRecord::Migration[5.1]
  def change
    add_column :riders, :quote, :string
  end
end
