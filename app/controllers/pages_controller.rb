class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @trekkings = Trekking.all
  end
end
