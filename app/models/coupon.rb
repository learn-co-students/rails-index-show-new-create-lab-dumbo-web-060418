class Coupon < ActiveRecord::Base
	def combined
		self.coupon_code + " " + self.store
	end
end