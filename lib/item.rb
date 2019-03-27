class Item
  attr_reader :days_remaining, :quality

  def initialize(days_remaining:, quality:)
    @days_remaining = days_remaining
    @quality = quality
  end

  def tick
    update_days
    update_quality
  end

  def day_step
    1
  end

  def quality_step
    1
  end

  def update_days
    @days_remaining -= day_step
  end

  def update_quality
    @quality -= quality_step
  end
end
