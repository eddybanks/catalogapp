class EditablePage < ActiveRecord::Base

  has_many :years, through: :editable_page_year
  has_many :editable_page_years

end

class Admission < EditablePage; end
