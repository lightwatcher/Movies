class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :src
      t.string :url
      t.string :desc
      t.string :title

      t.timestamps
    end
  end
end
