class User < ActiveRecord::Base
  include Clearance::User
  attr_accessor :image
  has_many :authentications, :dependent => :destroy
  mount_uploader :image, ImageUploader
  
  def self.create_with_auth_and_hash(authentication,auth_hash)
    create! do |u|
      u.first_name = auth_hash["info"]["first_name"]
      u.email = auth_hash["extra"]["raw_info"]["email"]
      u.authentications<<(authentication)
    end
  end
  
  def fb_token
    x = self.authentications.where(:provider => :facebook).first
    return x.token unless x.nil?
  end
  
  def password_optional?
    true
  end

  has_many :plugins
end