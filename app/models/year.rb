class Year < ActiveRecord::Base

  has_many :editable_pages, through: :editable_page_year
  has_many :editable_page_years

end
