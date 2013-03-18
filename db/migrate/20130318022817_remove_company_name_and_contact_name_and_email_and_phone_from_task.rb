class RemoveCompanyNameAndContactNameAndEmailAndPhoneFromTask < ActiveRecord::Migration
  def up
    remove_column :tasks, :company_name
    remove_column :tasks, :contact_name
    remove_column :tasks, :email
    remove_column :tasks, :phone
  end

  def down
    add_column :tasks, :phone, :integer
    add_column :tasks, :email, :string
    add_column :tasks, :contact_name, :string
    add_column :tasks, :company_name, :string
  end
end
