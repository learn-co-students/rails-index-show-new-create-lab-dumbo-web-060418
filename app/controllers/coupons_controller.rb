class CouponsController < ApplicationController

	def index
		@coupons = Coupon.all
	end

	def create
		@coupon = Coupon.new(coupon_params)
		@coupon.save
		redirect_to coupon_path(@coupon)
		# byebug
	end

	def new
		
	end

	def edit
		
	end

	def show
		@coupon = Coupon.last
		
	end

	def update
		
	end

	private

	def coupon_params
		params.require(:coupon).permit(:coupon_code, :store)
	end

end