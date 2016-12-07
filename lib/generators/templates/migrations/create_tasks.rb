class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string  :name,          null: false
      t.string  :at,            null: false
      t.string  :on,            null: false
      t.string  :job_name,      null: false
      t.string  :job_args_type, null: false
      t.integer :job_args_id,   null: false
      t.integer :status_id,     null: false
      t.integer :count,                       default: 0

      t.timestamps
    end

    add_index :tasks, [:at, :on, :status_id]
  end
end