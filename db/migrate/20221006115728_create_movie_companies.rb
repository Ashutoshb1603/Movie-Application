class CreateMovieCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_companies do |t|
      t.references :production_company, null: false, foreign_key: true
      t.references :movies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
