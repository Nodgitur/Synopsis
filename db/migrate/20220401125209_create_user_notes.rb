class CreateUserNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_notes do |t|
      t.string :notes

      t.timestamps
    end
  end
end
