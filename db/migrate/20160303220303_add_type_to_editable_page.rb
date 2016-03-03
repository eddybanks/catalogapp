class AddTypeToEditablePage < ActiveRecord::Migration
  def change
    add_column :editable_pages, :type, :string
  end
end
