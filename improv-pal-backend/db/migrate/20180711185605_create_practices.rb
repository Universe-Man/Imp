class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.string :location
      t.integer :team_id
      t.integer :coach_id

      t.timestamps
    end
  end
end
