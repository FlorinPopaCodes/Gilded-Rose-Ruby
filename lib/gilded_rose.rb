require_relative "item"
require_relative "base_item"
require_relative "normal"
require_relative "aged_brie"
require_relative "back_stage"
require_relative "conjured_mana"

class GildedRose
  def initialize(name:, days_remaining:, quality:)
    @name = name
    @item = item_class.new(days_remaining: days_remaining, quality: quality)
  end

  def tick
    @item.tick
  end

  def days_remaining
    @item.days_remaining
  end

  def quality
    @item.quality
  end

  def item_class
    case @name
    when "Normal Item"
      Normal
    when "Aged Brie"
      AgedBrie
    when "Backstage passes to a TAFKAL80ETC concert"
      BackStage
    when "Conjured Mana Cake"
      ConjuredMana
    else
      BaseItem
    end
  end
end
