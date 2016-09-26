class EstatesController < ApplicationController

  def index
    @user = current_user
    @estates = Estate.all
    @estates_count = @estates.count
  end

  def show
    @estate = Estate.find_by(id: params[:id])
    @hash = Gmaps4rails.build_markers(@estate) do |estate, marker|
    marker.lat estate.latitude
    marker.lng estate.longitude
end
  end

  def edit
    @user = current_user
    @estate = Estate.find_by(id: params[:id])

  end

  def create
    @user = current_user
    @estate = @user.estates.new(estate_params)
    if @estate.save
      redirect_to profile_path
    else
      render "new"
    end
  end

  def update
    @user = current_user
    @estate = Estate.find_by(id: params[:id])
    if @estate.update(estate_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  def destroy
    @user = current_user
    @estate = Estate.find_by(id: params[:id])
    @estate.destroy
    redirect_to :back
  end

  def new
    @user = current_user
    @estate = current_user.estates.new
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def estate_params
      params.require(:estate).permit(:size,
                                      :description,
                                      :price,
                                      :latitude,
                                      :longitude,
                                      :user_id)
    end
end
