class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @trekkings = Trekking.search_by_name_and_category(params[:query])
    else
      @trekkings = Trekking.all
    end
  end
end
