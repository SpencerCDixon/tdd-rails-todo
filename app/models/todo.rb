class Todo < ActiveRecord::Base
  def completed?
    completed_at? # comes from active record to see if its nil
  end

  def complete!
    self.touch :completed_at
  end
end
