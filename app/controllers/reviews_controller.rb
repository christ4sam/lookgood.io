class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_product

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = current_user.reviews.new(review_params)
    @review.product = @product

    respond_to do |format|
      if @review.save
        format.html { redirect_to @product, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @product, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to @product, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def set_product
      @product = Product.find(params[:product_id])
    end

    def review_params
      params.require(:review).permit(:user_id, :product_id, :description)
    end
end
