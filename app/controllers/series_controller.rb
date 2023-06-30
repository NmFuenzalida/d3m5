class SeriesController < ApplicationController
  def index
    @serie = Series.all
  end

  def new
    @serie = Series.new
  end

def create
  @serie = Series.new(serie_params)
  puts "hola"
    if @serie.save
      redirect_to series_index_path
      else
      render :new
      end
end

private
def serie_params
  params.require(:series).permit(:name, :synopsis, :director)
end

end
