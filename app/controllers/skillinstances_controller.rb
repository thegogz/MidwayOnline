class SkillinstancesController < ApplicationController

  # GET /skillinstances
  # GET /skillinstances.json
  def index
    @skillinstances = Skillinstance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @skillinstances }
    end
  end

  # GET /skillinstances/1
  # GET /skillinstances/1.json
  def show
    @skillinstance = Skillinstance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @skillinstance }
    end
  end

  # GET /skillinstances/new
  # GET /skillinstances/new.json
  def new
    @skillinstance = Skillinstance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skillinstance }
    end
  end

  # GET /skillinstances/1/edit
  def edit
    @skillinstance = Skillinstance.find(params[:id])
  end

  # POST /skillinstances
  # POST /skillinstances.json
  def create
    @skillinstance = Skillinstance.new(params[:skillinstance])

    respond_to do |format|
      if @skillinstance.save
        format.html { redirect_to @skillinstance, notice: 'Skillinstance was successfully created.' }
        format.json { render json: @skillinstance, status: :created, location: @skillinstance }
      else
        format.html { render action: "new" }
        format.json { render json: @skillinstance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /skillinstances/1
  # PUT /skillinstances/1.json
  def update
    @skillinstance = Skillinstance.find(params[:id])

    respond_to do |format|
      if @skillinstance.update_attributes(params[:skillinstance])
        format.html { redirect_to @skillinstance, notice: 'Skillinstance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skillinstance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skillinstances/1
  # DELETE /skillinstances/1.json
  def destroy
    @skillinstance = Skillinstance.find(params[:id])
    @skillinstance.destroy

    respond_to do |format|
      format.html { redirect_to skillinstances_url }
      format.json { head :no_content }
    end
  end
end
