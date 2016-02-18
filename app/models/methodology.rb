class Methodology < ActiveRecord::Base
  has_many :tags
  has_many :journals, through: :tags

  validates :name, presence: true
end
