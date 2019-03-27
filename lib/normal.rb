class Normal < Item
  def update_quality
    super
    super if days_remaining < 0
  end

  def quality
    [0, super].max
  end
end
