class AddIdToBeerTable < ActiveRecord::Migration[5.0]
  def change
    add_column :beer, :beer_key, :string
  end
end
