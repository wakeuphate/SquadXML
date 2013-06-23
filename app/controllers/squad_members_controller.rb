class SquadMembersController < ApplicationController
  # GET /squad_members
  # GET /squad_members.json
  def index
    @squad_members = SquadMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @squad_members }
    end
  end

  # GET /squad_members/1
  # GET /squad_members/1.json
  def show
    @squad_member = SquadMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @squad_member }
    end
  end

  # GET /squad_members/new
  # GET /squad_members/new.json
  def new
    @squad_member = SquadMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @squad_member }
    end
  end

  # GET /squad_members/1/edit
  def edit
    @squad_member = SquadMember.find(params[:id])
  end

  # POST /squad_members
  # POST /squad_members.json
  def create
    @squad_member = SquadMember.new(params[:squad_member])

    respond_to do |format|
      if @squad_member.save
        format.html { redirect_to @squad_member, notice: 'Squad member was successfully created.' }
        format.json { render json: @squad_member, status: :created, location: @squad_member }
      else
        format.html { render action: "new" }
        format.json { render json: @squad_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /squad_members/1
  # PUT /squad_members/1.json
  def update
    @squad_member = SquadMember.find(params[:id])

    respond_to do |format|
      if @squad_member.update_attributes(params[:squad_member])
        format.html { redirect_to @squad_member, notice: 'Squad member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @squad_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squad_members/1
  # DELETE /squad_members/1.json
  def destroy
    @squad_member = SquadMember.find(params[:id])
    @squad_member.destroy

    respond_to do |format|
      format.html { redirect_to squad_members_url }
      format.json { head :no_content }
    end
  end
end
