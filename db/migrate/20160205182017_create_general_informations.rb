class CreateGeneralInformations < ActiveRecord::Migration
  def change
    create_table :general_informations do |t|
      t.string :section_header
      t.text :section_text
      t.string :subsection_header
      t.text :subsection_text
      t.string :url_links

      t.timestamps null: false
    end
  end
end
