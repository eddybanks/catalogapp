class CreateStudentServices < ActiveRecord::Migration
  def change
    create_table :student_services do |t|
      t.text :section_content

      t.timestamps null: false
    end
  end
end
