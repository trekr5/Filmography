class CreateReviews < ActiveRecord::Migration
  def change
      create_table :reviews do |table|
        table.string :username
        table.string :name_of_film
        table.string :description
        table.string :comment
        table.integer :ratings
        table.timestamps
    end
  end
end
