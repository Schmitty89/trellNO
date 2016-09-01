class CardsController < ApplicationController
  def create
    @list=List.find(params[:list_id])
    @card = @list.cards.build(card_params)
    respond_to do |format|
      if @card.save
        format.json {render json: @card}
      else
        format.json {render json: @card.errors.full_messages}
      end
    end
  end
  def show
    @card = Card.find(params[:id])
  end
  def index
    @list= List.find(params[:list_id])
    @cards = @list.cards
  end
  def update
    @card = Card.find(params[:id])

    if @card.update(card_params)
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
  private
  def card_params
    params.require(:card).permit(:body)
  end

end
