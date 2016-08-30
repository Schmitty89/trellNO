class CardsController < ApplicationController
  def create
    @card =Card.new(cards_params)
      if @card.save
        redirect_to @card
      else
        render :new
      end

  end
  def show
    @card = Card.find(params[:id])
  end
  def index
    @card = Card.all
  end
  def update
    @card = Card.find(params[:id])

    if @card.update(cards_params)
      redirect_to @card
    else
      render :edit
    end
  end
  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to cards_path
  end
end
