class CreateExtendedLearnings < ActiveRecord::Migration
  def change
    create_table :extended_learnings do |t|
      t.text :section_content

      t.timestamps null: false
    end
  end
end
