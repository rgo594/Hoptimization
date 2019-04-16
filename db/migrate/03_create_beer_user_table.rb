class CreateBeerUserTable < ActiveRecord::Migration[5.0]
    def change 
        create_table :beer_user do |t|
            t.integer :beer_id
            t.integer :user_id 
        end
    end 
end
