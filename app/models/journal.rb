class Journal < ActiveRecord::Base
  searchkick

  include Approvable::ModelMethods

  has_many :tags
  has_many :methodologies, through: :tags
  belongs_to :user

  validates :title, presence: true
  validates :editor, presence: true
  validates :impact_factor, numericality: { only_integer: true }

  def search_data
    attributes.merge(
      impact_factor: impact_factor,
      editor: editor,
      methodology: methodologies.map(&:name)
    )
  end

end
