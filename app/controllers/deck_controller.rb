class DeckController < ApplicationController
  def index
    @decks = Deck.all();
  end

  def new
    @deck = Deck.new()
  end

  def create

    @deck = Deck.new(deck_params)

    @deck.save
    redirect_to @deck
  end

  def show
    @deck = Deck.find(params[:id])
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy

    redirect_to deck_index_path
  end

  private
  def deck_params
    params.require(:deck).permit(:name, :description)
  end
end
