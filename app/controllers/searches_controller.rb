class SearchesController < ApplicationController
  def search
    search_term = params[:q].blank? ? '*' : params[:q]
    #params[:q] = '*' if params[:q].nil?
    #return @journals = [] if params[:q].nil?
    @journals = Journal.search search_term
  end
end
