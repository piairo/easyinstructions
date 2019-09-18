class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :flats, dependent: :destroy



  def avatar
      if !avatar_url.nil?
        avatar_url
      elsif !facebook_picture_url.nil?
        facebook_picture_url
      else
        "http://placehold.it/90x90"
      end
  end

end
