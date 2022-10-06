class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string   :title
      t.integer  :budget
      t.integer  :homepage
      t.text     :overview
      t.string   :popularity
      t.datetime :release_date
      t.integer  :revenue
      t.string   :runtime
      t.string   :movie_status
      t.string   :tagline
      t.integer  :votes_count
      t.integer  :votes_avg

      t.timestamps
    end
  end
end
