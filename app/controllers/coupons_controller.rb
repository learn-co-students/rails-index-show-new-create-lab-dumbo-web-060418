class CouponsController < ApplicationController

  def new
  end

  def create
    @coupon = Coupon.new(coupon_params)
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def index
    @coupons = Coupon.all
  end

  def show
    set_coupon
  end

  def edit
    set_coupon
  end

  def update
    set_coupon
    @coupon.update(coupon_params)
    redirect_to coupon_path(@coupon)
  end

  def destroy
    set_coupon
    @coupon.destroy
    redirect_to coupons_path
  end

  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:store, :coupon_code)
  end
end
