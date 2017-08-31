class PagesController < ApplicationController
  def home
	@Provinces = Province.all
  end

  def about
  end
end
