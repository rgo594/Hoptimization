class CreateUserTable < ActiveRecord::Migration[5.0]

    def change 
        create_table :users do |t|
            t.string :name 
            t.string :favorite_beer
        end
    end 
end
