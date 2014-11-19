class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :line_items, dependent: :destroy

private
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base,'exists')
      return false
    end
  end
end
