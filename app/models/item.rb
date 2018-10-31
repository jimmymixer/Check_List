class Item < ApplicationRecord
  belongs_to :user

  def completed?
    # ITEM.complete_at IS NOT BLANK / NULL
    !completed_at.blank?
  end
end
