class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  validates_uniqueness_of :username
  validates_length_of :username, :minimum => 3, :maximum => 25

  # Email is not required
  def email_required?
    false
  end

  def email_changed?
    false
  end

end
