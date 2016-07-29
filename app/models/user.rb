class User < ActiveRecord::Base
  validates :email, format: {with: /@/}, uniqueness: true

  def self.sign_up(email)
    User.create(email: email)
  end
end
