class PagesController < ApplicationController
  # This line is added to skip the authentication for the home page
  # if you want to skip authentication for any other page, you can add it here ex: only: :home or except: :home
    skip_before_action :authenticate_user!, only: :home

  def home
  end

  def about
  end
end
