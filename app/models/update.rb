class Update < ActiveRecord::Base
	belongs_to :doi

	def self.search(search)
		if search
	      find(:all, :conditions => ['doi_id=?', search])
	    else
	      find(:all)
	    end
	end
end
