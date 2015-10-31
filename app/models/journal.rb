class Journal < ActiveRecord::Base
  has_and_belongs_to_many :methodologies

  validates :title, presence: true
  validates :editor, presence: true
  validates :impact_factor, numericality: { only_integer: true }
end
