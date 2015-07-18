class RatingsController < ApplicationController
 

  def show 
    @rating = Rating.where(product_id: @product.id, user_id:
    @current_user.id).first unless @rating 
    @rating = Rating.create!(product_id: @product.id, user_id: @current_user.id, score: 0) 
  end 

  def update
    @rating = Rating.find(params[:id])
    @product = @rating.product
    if @rating.update_attributes(score: params[:score])
      respond_to do |format|
        format.js
      end
    end
  end
end



   
    


