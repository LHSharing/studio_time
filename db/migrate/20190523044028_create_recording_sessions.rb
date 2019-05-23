class CreateRecordingSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :recording_sessions do |t|
      t.datetime :appointment_date
      t.boolean :status
      t.integer :duration

      t.timestamps
    end
  end
end
