class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.integer :last_season
      t.integer :last_episode

      t.timestamps
    end
  end
end
