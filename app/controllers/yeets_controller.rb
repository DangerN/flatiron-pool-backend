class YeetsController < ApplicationController
  before_action :set_yeet, only: [:show, :update, :destroy]

  # GET /yeets
  def index
    @yeets = Yeet.all

    render json: @yeets
  end

  # GET /yeets/1
  def show
    render json: @yeet
  end

  # POST /yeets
  def create
    @yeet = Yeet.new(yeet_params)

    if @yeet.save
      render json: @yeet, status: :created, location: @yeet
    else
      render json: @yeet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /yeets/1
  def update
    if @yeet.update(yeet_params)
      render json: @yeet
    else
      render json: @yeet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /yeets/1
  def destroy
    @yeet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yeet
      @yeet = Yeet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def yeet_params
      params.require(:yeet).permit(:potato)
    end
end
