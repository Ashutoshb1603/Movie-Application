class CreateMovieGeneres < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_generes do |t|
      t.references :genere, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
