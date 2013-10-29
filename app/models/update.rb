class Update < ActiveRecord::Base
	belongs_to :doi
	validates_presence_of :description, :url
	validates_format_of :url, with: /\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?\z/ 
	before_save :fix_url

	def fix_url
		if self.url =~ /\A([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?\z/
			self.url = "https://" + self.url
		elsif self.url =~ /\A[\w]+\.[\w]{2,6}\z/
			self.url = "https://www" + self.url
		end
	end
end