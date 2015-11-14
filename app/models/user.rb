class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:user, :moderator, :admin]

  has_many :journals

  after_initialize :set_default_role, if: :new_record?

  validates :role, presence: true

  def set_default_role
    self.role ||= :user
  end
end
