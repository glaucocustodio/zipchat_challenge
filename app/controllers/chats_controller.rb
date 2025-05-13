class ChatsController < ApplicationController
  def index
    @chats = Chat.ordered
    @chat = Chat.new
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def create
    @chats = Chat.ordered
    @chat = Chat.sale(chat_params)

    if @chat.save
      @chat.activate_sales_assistant_mode!
      render :create
    else
      render :new
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:name)
  end
end
