class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :contact_name

      t.timestamps
    end
  end
end
