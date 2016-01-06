class SearchesController < ApplicationController
  def search
    #return @journals = [] if params[:q].nil?
    search_term = params[:q].blank? ? '*' : params[:q]
    #Rails.logger.info params[:journal].blank?.inspect
    #params[:journal][:editor] = 'test'
    #params[:journal][:impact_factor]
    #facetted = params.any? { |attribute| attribute.empty? }
    #Rails.logger.info facetted.inspect
    # Rails.logger.info params[:journal][:editor].blank?.inspect
    # Rails.logger.info params[:journal][:impact_factor].empty?.inspect
    #params[:q] = '*' if params[:q].nil?
    #@journals = Journal.search search_term

    if params[:journal].nil?
      @journals = Journal.search search_term
    else
    Rails.logger.info params[:journal].inspect
      @journals = Journal.search search_term,
        where: {
          editor: params[:journal][:editor]
        }
    end
  end
end
