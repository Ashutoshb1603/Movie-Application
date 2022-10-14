class CreateMovieCrews < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_crews do |t|
      t.string :movie_id
      t.string :person_id
      t.string :department_id
      t.string :job

      t.timestamps
    end
  end
end
