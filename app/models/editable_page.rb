class EditablePage < ActiveRecord::Base

  has_many :years, through: :editable_page_years
  has_many :editable_page_years

end

class Administration < EditablePage; end
class Admission < EditablePage; end
class College < EditablePage; end
class Degree < EditablePage; end
class Department < EditablePage; end
class ExtendedLearning < EditablePage; end
class GeneralInformation < EditablePage; end
class GraduateProgram < EditablePage; end
class Policy < EditablePage; end
class StudentService < EditablePage; end
class UndergraduateAdvisement < EditablePage; end
class UndergraduateProgram < EditablePage; end
