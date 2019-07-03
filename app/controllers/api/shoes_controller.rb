class Api::ShoesController < ApplicationController

  def index
    @shoes = Shoe.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @shoe = Shoe.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create
    @shoe = Shoe.new(
      company: params[:company],
      size: params[:size],
      color: params[:color]
    )
    @shoe.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @shoe = Shoe.find_by(id: the_id)
    @shoe.company = params[:company]
    @shoe.size = params[:size]
    @shoe.color = params[:color]
    render 'update.json.jb'
  end

  def destroy
    the_id = params[:id]
    @shoe = Shoe.find_by(id: the_id)
    @shoe.destroy
    render 'destroy.json.jb'
  end

end
