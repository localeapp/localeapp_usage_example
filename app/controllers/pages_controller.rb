class PagesController < ApplicationController

  def home
    I18n.locale = :es if params[:locale] == 'es'
  end
end
