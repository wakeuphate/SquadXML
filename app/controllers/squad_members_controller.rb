class SquadMembersController < ApplicationController

  def index
    @squad_members = SquadMember.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @squad_member = SquadMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @squad_member = SquadMember.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @squad_member = SquadMember.find(params[:id])
  end

  def create
    @squad_member = SquadMember.new(params[:squad_member])

    respond_to do |format|
      if @squad_member.save
        format.html { redirect_to @squad_member, notice: 'Squad member was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @squad_member = SquadMember.find(params[:id])

    respond_to do |format|
      if @squad_member.update_attributes(params[:squad_member])
        format.html { redirect_to @squad_member, notice: 'Squad member was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @squad_member = SquadMember.find(params[:id])
    @squad_member.destroy

    respond_to do |format|
      format.html { redirect_to squad_members_url }
    end
  end
end
