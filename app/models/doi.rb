class Doi < ActiveRecord::Base
	attr_accessor :url

	has_many :updates
	has_many :comments
	accepts_nested_attributes_for :updates
	belongs_to :users

	validates_presence_of :name, :description
	validates_format_of :name, with: /[a-zA-Z0-9]+/
	
end
