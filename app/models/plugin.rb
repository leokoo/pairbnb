class Plugin < ActiveRecord::Base
	mount_uploaders :images, ImageUploader
	validates :plugin_name, presence: true
	belongs_to :user
	has_many :plugin_categories
	has_many :categories, through: :plugin_categories
	accepts_nested_attributes_for :categories, allow_destroy: true
end
