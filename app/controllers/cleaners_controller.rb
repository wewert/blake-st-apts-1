class CleanersController < ApplicationController
  def index
    @cleaners = Cleaner.all
  end
end
