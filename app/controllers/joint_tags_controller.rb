class JointTagsController < ApplicationController
  before_action :set_joint_tag, only: [:show, :edit, :update, :destroy]

  # GET /joint_tags
  # GET /joint_tags.json
  def index
    @joint_tags = JointTag.all
  end

  # GET /joint_tags/1
  # GET /joint_tags/1.json
  def show
  end

  # GET /joint_tags/new
  def new
    @joint_tag = JointTag.new
  end

  # GET /joint_tags/1/edit
  def edit
  end

  # POST /joint_tags
  # POST /joint_tags.json
  def create
    @joint_tag = JointTag.new(joint_tag_params)

    respond_to do |format|
      if @joint_tag.save
        format.html { redirect_to @joint_tag, notice: 'Joint tag was successfully created.' }
        format.json { render :show, status: :created, location: @joint_tag }
      else
        format.html { render :new }
        format.json { render json: @joint_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joint_tags/1
  # PATCH/PUT /joint_tags/1.json
  def update
    respond_to do |format|
      if @joint_tag.update(joint_tag_params)
        format.html { redirect_to @joint_tag, notice: 'Joint tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @joint_tag }
      else
        format.html { render :edit }
        format.json { render json: @joint_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joint_tags/1
  # DELETE /joint_tags/1.json
  def destroy
    @joint_tag.destroy
    respond_to do |format|
      format.html { redirect_to joint_tags_url, notice: 'Joint tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joint_tag
      @joint_tag = JointTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joint_tag_params
      params.require(:joint_tag).permit(:joint_id, :tag_id)
    end
end
