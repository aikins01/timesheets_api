class CreateTimesheets < ActiveRecord::Migration[6.1]
  def change
    create_table :timesheets do |t|
      t.integer :employee_id
      t.integer :rate
      t.string :company
      t.date :date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
