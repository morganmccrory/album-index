class SongsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @songs = Song.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
  end

  private

  def sort_column
    Song.column_names.include?(params[:sort]) ? params[:sort] : "title"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end