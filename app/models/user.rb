class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :userid, uniqueness: true

  enum role: [:admin, :student, :superadmin]

  has_one :student
  has_one :manager


  def display_name
    if student?
      self.username + " (学生)"
    elsif admin?
      self.username + " (管理员)"
    else
      self.username
    end
  end


  def email_changed?
    false
  end

end
