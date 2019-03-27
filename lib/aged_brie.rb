class AgedBrie < Item
  def quality_step
    -1
  end

  def update_quality
    super
    super if days_remaining < 0
  end

  def quality
    [super, 50].min
  end
end
