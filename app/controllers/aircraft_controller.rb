# frozen_string_literal: true
class AircraftController < ApplicationController
  def index
    @aircraft = Aircraft.all
  end
end
