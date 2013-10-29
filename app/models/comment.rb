class Comment < ActiveRecord::Base
	belongs_to :doi
	belongs_to :user

	validates_presence_of :doi_id, :user_id, :comment
end
