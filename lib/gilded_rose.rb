class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
  end

  def normal_tick
    @days_remaining -= 1
    if @days_remaining < 0
      @quality -= 2
    else
      @quality -= 1
    end
    @quality = 0 if @quality < 0
  end

  def aged_brie_tick
    @days_remaining -= 1
    @quality += 1 if @days_remaining < 0
    @quality += 1
    @quality = 50 if @quality > 50
  end

  def sulfuras_tick
  end

  def backstage_pass_tick
    @days_remaining -= 1
    @quality += 1
    @quality += 1 if @days_remaining < 10
    @quality += 1 if @days_remaining < 5
    @quality = 50 if @quality > 50
    @quality = 0 if @days_remaining < 0
  end

  def conjured_mana_tick
    @days_remaining -= 1
    @quality -= 2
    @quality -= 2 if @days_remaining < 0
    @quality = 0 if @quality < 0
  end

  def tick
    return normal_tick if @name == "Normal Item"
    return aged_brie_tick if @name == "Aged Brie"
    return sulfuras_tick if @name == "Sulfuras, Hand of Ragnoros"
    return backstage_pass_tick if @name == "Backstage passes to a TAFKAL80ETC concert"
    return conjured_mana_tick if @name == "Conjured Mana Cake"

  end
end
