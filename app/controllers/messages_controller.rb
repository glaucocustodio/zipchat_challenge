class MessagesController < ApplicationController
  def create
    @chat = Chat.find(params[:chat_id])
    @chat.ask(message_params[:content])
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
