class CreateBeerTable < ActiveRecord::Migration[5.0]
    def change 
        create_table :beer do |t|
            t.string :name 
            t.string :location 
            t.string :beer_type
            t.string :description 
        end
    end    
end
