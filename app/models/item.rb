# encoding: utf-8

class Item < ActiveRecord::Base
	#include Paperclip::Glue

	PLAN_STATUS = [ "实现中","实现了","放弃","实现不了"]
	#validates :planstatu,:inclusion => PLAN_STATUS

	belongs_to :user
	
	default_scope :order => 'des'

	validates :des,:location, :presence => true 

	has_attached_file :Itemimg, :styles => { :small => "150x150>" , :xsmall => "210x840>" }

	validates_attachment_presence :Itemimg
	validates_attachment_size :Itemimg,:less_than => 5.megabytes
	validates_attachment_content_type :Itemimg,:content_type => ['image/jpeg','image/png','image/jpg']

	#def self.per_page
	#	5
	#end

end
