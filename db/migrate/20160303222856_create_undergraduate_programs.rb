class CreateUndergraduatePrograms < ActiveRecord::Migration
  def change
    create_table :undergraduate_programs do |t|
      t.text :section_content

      t.timestamps null: false
    end
  end
end
