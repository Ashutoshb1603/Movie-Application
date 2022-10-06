class CreateMovieLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_languages do |t|

      t.integer :language_role_id
      t.integer :movie_id
      t.integer :language_id
      t.timestamps
    end
  end
end
