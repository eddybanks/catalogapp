class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.string :name
      t.string :homepage_header
      t.text :homepage_text

      t.timestamps null: false
    end
  end
end
