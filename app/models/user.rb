# encoding: utf-8
class User < ActiveRecord::Base

  SEX_STATUS = [ "男","女" ]
  validates :sex,:inclusion => SEX_STATUS

  has_many :items, :dependent => :destroy

	has_attached_file :img, :styles => { :small => "60x60>" , :xsmall => "210x840>" }

	validates_attachment_presence :img
	validates_attachment_size :img,:less_than => 5.megabytes
	validates_attachment_content_type :img,:content_type => ['image/jpeg','image/png','image/jpg']

  # Include default devise modules. Others available are: :stretches => 20
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me ,:pet_name ,:des,:sex

  def add_item(item_id)
    current_item = items.find_by_id(item_id)
    current_item
  end
end
