class CreateEditablePages < ActiveRecord::Migration
  def change
    create_table :editable_pages do |t|
      t.text :section_content

      t.timestamps null: false
    end
  end
end
