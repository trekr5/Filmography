class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |table|
    	table.string :title
    	table.integer :ratings
    	table.text :description
    	table.timestamps

    end
  end
end
