class Year < ActiveRecord::Base

  has_many :editable_pages, through: :editable_page_years
  has_many :editable_page_years

end
