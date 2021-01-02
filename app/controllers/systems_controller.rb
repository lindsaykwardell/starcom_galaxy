class SystemsController < ApplicationController
  def new
    @system_codes = [
      System.new_location,
      System.new_location,
      System.new_location,
      System.new_location,
      System.new_location
    ]
  end
end
