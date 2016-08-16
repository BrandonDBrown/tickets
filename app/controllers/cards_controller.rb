class CardsController < ApplicationController
  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
       redirect_to root_path
    else
        render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @card = Card.new
    @cards = Card.where(archived: false)
  end

  def show
  end



  private

      def card_params
          params.require(:card).permit(:link_to_ticket, :ticket_title, :migration, :rake_task, :other_prod_concern, :regression_concern, :regression_textbox,:ticket_notes, :status, :archived)
      end
end
