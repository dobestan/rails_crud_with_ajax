class PastebinsController < ApplicationController
  def index
    @pastebins = Pastebin.all
  end

  def create
    pastebin = Pastebin.new(title: params[:title], text: params[:text])
    if pastebin.save
      data = {
        id: pastebin.id,
        title: pastebin.title,
        text: pastebin.text
      }
      render json: pastebin.to_json
    else
    end
  end
end
