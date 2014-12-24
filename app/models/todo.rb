class Todo < ActiveRecord::Base

  def completed?
    completed_at? # comes from active record to see if its nil
  end
end
