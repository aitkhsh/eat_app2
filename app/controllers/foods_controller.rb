class FoodsController < ApplicationController
  before_action :set_q, only: [:index, :search]


  def search 
    @food_results = @q.result
    @api_key = ENV['GOOGLE_API_KEY']
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  private

    def set_q
      @q = Food.ransack(params[:q])
    end
   
end
