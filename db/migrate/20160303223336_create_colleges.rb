class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.text :section_content

      t.timestamps null: false
    end
  end
end
