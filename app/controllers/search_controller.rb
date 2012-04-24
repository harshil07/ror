class SearchController < ApplicationController
  def index
    @results = ""
    @hitcount = ""
    if params[:search] and !params[:search].nil?
	    search_results = RDig.searcher.search(params[:search])
	    @results = search_results[:list]
	    @hitcount = search_results[:hitcount]
    end
  end
end
