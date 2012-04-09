class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :authentications

  def build_with_provider(omniauth)
    user_info = omniauth['info']
    provider = omniauth['provider']

    if provider=='twitter'
      self.email= user_info['nickname']
    elsif provider=='facebook'
      self.email= user_info['email']
    elsif provider=='google_oauth2'
      self.email= user_info['email']
    end
    self.authentications.build(:provider => provider, :uid => omniauth['uid'])
  end
end
