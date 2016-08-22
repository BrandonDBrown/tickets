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
    @card_edit = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    if @card.update_attributes(card_params)
      redirect_to root_path
    end
  end

  def destroy
  end

  def index
    @card = Card.new
    @cards = Card.all
  end

  def show
  end



  private

      def card_params
          params.require(:card).permit(:link_to_ticket, :ticket_title, :migration, :rake_task, :other_prod_concern, :regression_concern, :regression_textbox,:ticket_notes, :status, :archived)
      end
end
