class BackStage < Item
  def quality_step
    -1
  end

  def update_quality
    super
    super if days_remaining < 10
    super if days_remaining < 5
  end

  def quality
    return 0 if days_remaining < 0

    [super, 50].min
  end
end
