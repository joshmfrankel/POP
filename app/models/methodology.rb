class Methodology < ActiveRecord::Base
  has_and_belongs_to_many :journals

  validates :name, presence: true
end
