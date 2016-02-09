class Course < ActiveResource::Base
  self.site = "http://localhost:8030"

  def full_number
    [code, " ", number_prepend, number, number_append].join
  end

  def prereqs
  end

end
