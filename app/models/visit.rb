class Visit < ActiveRecord::Base
  belongs_to :pet

  validates :weight_in_kg, numericality: { greater_than: 0}
end
