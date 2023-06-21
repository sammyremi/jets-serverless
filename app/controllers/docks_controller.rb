class DocksController < ApplicationController
  before_action :set_dock, only: [:show, :edit, :update, :delete]

  # GET /docks
  def index
    @docks = Dock.all
  end

  # GET /docks/1
  def show
  end

  # GET /docks/new
  def new
    @dock = Dock.new
  end

  # GET /docks/1/edit
  def edit
  end

  # POST /docks
  def create
    @dock = Dock.new(dock_params)

    if @dock.save
      redirect_to dock_path(@dock)
    else
      render :new
    end
  end

  # PUT /docks/1
  def update
    if @dock.update(dock_params)
      redirect_to dock_path(@dock)
    else
      render :edit
    end
  end

  # DELETE /docks/1
  def delete
    @dock.destroy
    redirect_to docks_path
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_dock
    @dock = Dock.find(params[:id])
  end

  def dock_params
    params.require(:dock).permit(:title)
  end
end
