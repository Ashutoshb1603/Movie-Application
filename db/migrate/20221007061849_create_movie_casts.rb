class CreateMovieCasts < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_casts do |t|
      t.string :movie_id
      t.string :gender_id
      t.string :person_id
      t.string :character_name
      t.string :cast_order

      t.timestamps
    end
  end
end
