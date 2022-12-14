class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.integer :location_id
      t.integer :user_id
      t.integer :vote_value_cd

      t.timestamps
    end
  end
end
