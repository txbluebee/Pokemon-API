class MonstersController < ApplicationController
  before_action :set_monster, only: [:show, :update, :destroy]

  # GET /monsters
  def index
    @monsters = Monster.all
    json_response(@@monsters)
  end

  # GET /monsters/1
  def show
    json_response(@monsters)
  end

  # POST /monsters
  def create
    @monster = Monster.create!(monster_params)
    json_response(@monster, :created)
  end

  # PATCH/PUT /monsters/1
  def update
    if @monster.update!(monster_params)
      json_response(@monster, :ok)
    else
      json_response(@monster, :unprocessable_entity)
    end
  end

  # DELETE /monsters/1
  def destroy
    @monster.destroy
    if @monster.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster
      @monster = Monster.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def monster_params
      params.permit(:name, :location, :move)
    end
end
