class SearchesController < ApplicationController
  def search

    if params[:q].nil? &&
      params[:editor].nil? &&
      params[:impact_factor].nil? &&
      params[:methodology].nil?
      @journals = Journal.search '*',
        aggs: [:editor, :impact_factor, :methodology]
    else

      search_term = params[:q].blank? ? '*' : params[:q]

      # Build where
      where = {
        editor: params[:editor],
        impact_factor: params[:impact_factor],
        methodology: params[:methodology]
      }.reject{ |k, v| v.nil? }

      @journals = Journal.search search_term,
        where: where,
        aggs: [:editor, :impact_factor, :methodology],
        smart_aggs: true
    end
  end
end

