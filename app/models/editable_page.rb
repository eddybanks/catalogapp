class EditablePage < ActiveRecord::Base

  has_many :years, through: :editable_page_years
  has_many :editable_page_years

end

class Admission < EditablePage; end
class Administration < EditablePage; end
class Department < EditablePage; end
class GeneralInformation < EditablePage; end
