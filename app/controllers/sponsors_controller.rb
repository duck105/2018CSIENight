class SponsorsController < ApplicationController
  def index
    @sponsors = Sponsor.order("donate" => "desc")
  end
end