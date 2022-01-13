class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.integer :genre_id
      t.integer :tag_id
      t.integer :comment_id
      t.string :name
      t.text :caption

      t.timestamps
    end
  end
end
