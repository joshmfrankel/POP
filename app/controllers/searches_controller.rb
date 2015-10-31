class SearchesController < ApplicationController
  def search
    return @journals = [] if params[:q].nil?
    @journals = Journal.search params[:q]
  end
end
