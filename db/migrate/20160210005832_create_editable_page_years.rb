class CreateEditablePageYears < ActiveRecord::Migration
  def change
    create_table :editable_page_years do |t|
      t.references :year, index: true, foreign_key: true
      t.references :editable_page, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
