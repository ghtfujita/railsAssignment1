class AddColumnsToInquiries < ActiveRecord::Migration[5.2]
  def change
    add_column :inquiries, :name, :string
    add_column :inquiries, :email, :string
    add_column :inquiries, :content, :string
  end
end
