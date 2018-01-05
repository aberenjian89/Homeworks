class User < ApplicationRecord
  validates :username,:session_token, presence: true
  validates :password_digest, presence: true
  validates :password, length: {minimum: 6,allow_nil: true}
  attr_reader :password
  after_initialize :ensure_session_token


  def self.find_by_credentials(username, password)
    @user = User.find(username: username)
    return nil if @user.nil?
    return @user ? validate_password?(password) : nil
  end

  def validate_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def generate_session_token
    self.session_token = SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    self.session_token = generate_session_token
    self.save!
  end

  private
  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64
    self.save!
    self.session_token
  end


end
