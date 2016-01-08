class SearchesController < ApplicationController
  def search
    if params[:q].nil? && params[:editor].nil? && params[:impact_factor].nil?
      @journals = Journal.search '*',
        aggs: [:editor, :impact_factor]
      @aggs = @journals.aggs
    else

      search_term = params[:q].blank? ? '*' : params[:q]

      # Build where
      where = {
        editor: params[:editor],
        impact_factor: params[:impact_factor]
      }.reject{ |k, v| v.nil? }

      @journals = Journal.search search_term,
        where: where,
        aggs: [:editor, :impact_factor]
      @aggs = @journals.aggs
    end
  end
end
