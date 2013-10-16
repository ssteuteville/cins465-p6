class Doi < ActiveRecord::Base
	has_many :updates
	accepts_nested_attributes_for :updates








	#def 

	def self.search(search)
		if search
	      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
	    else
	      find(:all)
	    end
	end
end
