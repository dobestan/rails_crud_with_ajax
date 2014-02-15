class PastebinsController < ApplicationController
  def index
    @pastebins = Pastebin.all
  end

  def create
  end
end
