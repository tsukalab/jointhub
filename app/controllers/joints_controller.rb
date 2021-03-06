class JointsController < ApplicationController
  include Zipline
  before_action :authenticate_user!, only: %i[edit update destroy]
  before_action :set_joint, only: %i[show edit update destroy download_parts_file]

  # GET /joints
  # GET /joints.json
  def index
    if params[:tag_id].nil?
      @joints = Joint.search(params[:search]).page(params[:page])
    else
      @joints = Tag.find(params[:tag_id]).joints.page(params[:page])
    end
  end

  # GET /joints/1
  # GET /joints/1.json
  def show
  end

  # GET /joints/new
  def new
    @joint = Joint.new
  end

  # GET /joints/1/edit
  def edit
  end

  # POST /joints
  # POST /joints.json
  def create
    @joint = Joint.new(joint_params)

    respond_to do |format|
      if @joint.save
        format.html { redirect_to @joint, flash: { success: 'Joint was successfully created.' } }
        format.json { render :show, status: :created, location: @joint }
      else
        format.html { render :new }
        format.json { render json: @joint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joints/1
  # PATCH/PUT /joints/1.json
  def update
    respond_to do |format|
      if @joint.update(joint_params)
        format.html { redirect_to @joint, success: 'Joint was successfully updated.' }
        format.json { render :show, status: :ok, location: @joint }
      else
        format.html { render :edit }
        format.json { render json: @joint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joints/1
  # DELETE /joints/1.json
  def destroy
    @joint.destroy
    respond_to do |format|
      format.html { redirect_to joints_url, flash: { success: 'Joint was successfully destroyed.' } }
      format.json { head :no_content }
    end
  end

  def download_parts_file
    files =  @joint.parts.map{ |part| [part.stl, "#{part.stl_identifier}"] }
    zipline(files, "#{@joint.name}.zip")
  end

  private

  def set_joint
    @joint = Joint.find(params[:id])
  end

  def joint_params
    params.require(:joint).permit(
      :name, :description, :image, :image_cache, part_ids: [], tag_ids: []
    )
  end
end
