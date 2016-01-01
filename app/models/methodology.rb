class Methodology < ActiveRecord::Base
  has_and_belongs_to_many :journals, dependent: :destroy

  validates :name, presence: true
end
