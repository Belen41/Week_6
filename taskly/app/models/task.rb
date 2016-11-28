class Task < ApplicationRecord
  def complete
    self.completed = true
    self.save
  end
  def as_json(options={})
    super(only: [:name, :due_date, :completed])
    end
end
