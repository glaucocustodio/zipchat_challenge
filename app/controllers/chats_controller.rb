class ChatsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @chats = Chat.all
    @chat = Chat.new
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def create
    @chat = Chat.new(chat_params)

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
