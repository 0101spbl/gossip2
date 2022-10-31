class HomeController < ApplicationController
    def gossip
      @all_gossips= Gossip.all
    end
  
    def show_gossip
      @gossip = Gossip.find(params[:id])
    end
  end
  