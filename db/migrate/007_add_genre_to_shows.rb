class AddGenreToShows < ActiveRecord::Migration[4.2]
  def change
    add_column :shows, :DAY, :string
    add_column :shows, :genre, :string
  end
end
