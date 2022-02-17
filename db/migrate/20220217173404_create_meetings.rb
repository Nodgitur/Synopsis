class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.string :Example
      t.datetime :start_time

      t.timestamps
    end
  end
end
