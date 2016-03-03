class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.text :section_content

      t.timestamps null: false
    end
  end
end
