class CharactersController < ApplicationController
	before_filter :get_player
	
	def get_player
		@player = Player.find(params[:player_id])
	end
	
	def promote
		@character = @player.characters.find(params[:id])
		@character.active = true
		if @character.save
			redirect_to @player, notice: 'Character was successfully Promoted.'
		else
			redirect_to @player
		end
	end
	
	def demote
		@character = @player.characters.find(params[:id])
		@character.active = false
		if @character.save
			redirect_to @player, notice: 'Character was successfully Demoted.'
		else
			redirect_to @player
		end
	end
	
  # GET player/1/characters
  # GET player/1/characters.json
  def index
    @characters = @player.characters

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: [@player, @character] }
    end
  end

  # GET /player/1/characters/1
  # GET /player/1/characters/1.json
  def show
    @character = @player.characters.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: [@player, @character] }
    end
  end

  # GET /characters/new
  # GET /characters/new.json
  def new
    @character = @player.characters.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: [@player, @character] }
    end
  end

  # GET /characters/1/edit
  def edit
    @character = @player.characters.find(params[:id])
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = @player.characters.new(params[:character])

    respond_to do |format|
      if @character.save
        format.html { redirect_to [@player, @character], notice: 'Character was successfully created.' }
        format.json { render json: [@player, @character], status: :created, location: [@player, @character] }
      else
        format.html { render action: "new" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /characters/1
  # PUT /characters/1.json
  def update
    @character = @player.characters.find(params[:id])

    respond_to do |format|
      if @character.update_attributes(params[:character])
        format.html { redirect_to [@player, @character], notice: 'Character was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character = @player.characters.find(params[:id])
    @character.destroy

    respond_to do |format|
      format.html { redirect_to player_characters_url }
      format.json { head :no_content }
    end
  end
end
