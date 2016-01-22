class Journal < ActiveRecord::Base
  searchkick

  include Approvable::ModelMethods

  has_and_belongs_to_many :methodologies
  belongs_to :user

  accepts_nested_attributes_for :methodologies

  validates :title, presence: true
  validates :editor, presence: true
  validates :impact_factor, numericality: { only_integer: true }

end
