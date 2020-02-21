class LoadoutsController < OpenReadController
  before_action :set_loadout, only: [:show, :update, :destroy]

  # GET /loadouts
  def index
    @loadouts = Loadout.all

    render json: @loadouts
  end

  # GET /loadouts/1
  def show
    render json: @loadout
  end

  # POST /loadouts
  def create
    @loadout = current_user.loadouts.build(loadout_params)

    if @loadout.save
      render json: @loadout, status: :created
    else
      render json: @loadout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /loadouts/1
  def update
    if @loadout.update(loadout_params)
      render json: @loadout
    else
      render json: @loadout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /loadouts/1
  def destroy
    @loadout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loadout
      @loadout = current_user.loadouts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def loadout_params
      params.require(:loadout).permit(:loadout_name, :armor_slot, :weapon_slot, :trinket_slot, :user_id)
    end
end
