class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @trekkings = policy_scope(Trekking)
    @trekkings = @trekkings.includes(:order).where(order: {id: nil})

    if params[:query].present?
      @trekkings = @trekkings.search_by_name_and_category(params[:query])
    end
  end
end
