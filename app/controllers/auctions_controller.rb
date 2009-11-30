class AuctionsController < ApplicationController
  def index
  	@user = User.find(params[:user_id])
  	@auctions = @user.auctions
  end

  def show
  	@user = User.find(params[:user_id])
  	@auction = @user.auctions.find(params[:id])
  end

  def new
  	@user = User.find(params[:user_id])
  	@auction = @user.auctions.build
  end

  def create
  	@user = User.find(params[:user_id])
  	@auction = @user.auctions.build(params[:auction])
  	if @auction.save
  		redirect_to user_auction_url(@user, @auction)
 	else
 		render :action => "new"
 	end
 end
 
 def edit 
 	@user = User.find(params[:user_id])  
 	@auction = @user.auctions.find(params[:id])  
 end
  
def update 
	@user = User.find(params[:user_id])  
	@auction = Auction.find(params[:id])  
	if @auction.update_attributes(params[:auction])  
		redirect_to user_auction_url(@user, @auction)  
		else  render :action => "edit"  
		end  
	end  
	
	def destroy 
		@user = User.find(params[:user_id])  
		@auction = Auction.find(params[:id])  
		@comment.destroy 
		redirect_to user_auctions_path(@user)  
	end 

end
