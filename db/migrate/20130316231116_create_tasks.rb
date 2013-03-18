class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.date :due_date
      t.text :description
      t.string :assigned_to
      t.string :company_name
      t.string :contact_name
      t.integer :phone
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
