class RemoveUnneededFields < ActiveRecord::Migration
  def change
  	remove_column  :reviews, :name_of_film, :description
  end
end
