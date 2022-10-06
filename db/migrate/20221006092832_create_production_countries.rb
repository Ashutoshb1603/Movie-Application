class CreateProductionCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :production_countries do |t|
      t.integer :movie_id
      t.integer :country_id

      t.timestamps
    end
  end
end
