class User < ApplicationRecord
  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }

  before_save :format_values

  private

  def format_values
    self.email = email.downcase
  end
end
