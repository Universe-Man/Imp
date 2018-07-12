class CreateTeamShows < ActiveRecord::Migration[5.2]
  def change
    create_table :team_shows do |t|
      t.integer :show_id
      t.integer :team_id

      t.timestamps
    end
  end
end
