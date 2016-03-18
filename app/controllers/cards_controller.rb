class CardsController < ApplicationController
  def index
    @card = Card.all();
  end

  def new
    binding.pry
    @card = Card.new()
  end

  def create
    @deck = Deck.find(params[:deck_id])
    @card = Card.new(card_params)
    @card.deck = @deck
    @card.save

    redirect_to deck_path(@deck)
  end

  def show
    @card = Card.find(params[:id])
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy

    redirect_to deck_index_path
  end

  private
  def card_params
    params.require(:card).permit(:name, :description)
  end
end
