class EditablePageYear < ActiveRecord::Base

  belongs_to :year
  belongs_to :editable_page

end
