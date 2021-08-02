class TimeTracker < ApplicationRecord
  def running?
    status[/running/]
  end

  def duration
    if running?
      (Time.current - started_at).to_i
    else
      (ended_at - started_at).to_i
    end
  end
end
