module TimeTrackersHelper
  def duration_display(time_tracker)
    duration = ActiveSupport::Duration.build(time_tracker.duration).parts

    format('%<h>02d:%<min>02d:%<s>02d', h: (duration[:hours] || 0), min: (duration[:minutes] || 0),
                                        s: (duration[:seconds] || 0))
  end
end
