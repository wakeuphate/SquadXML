class SquadMembersController < ApplicationController

  before_filter :authenticate_user!

  def show
    @squad_member = SquadMember.find(params[:id])

    if current_user == @squad_member.user || current_user.admin?
      respond_to do |format|
        format.html # show.html.erb
      end
    end
  end

  def new
    @squad_member = SquadMember.new

    if current_user.squad_member
      redirect_to root_path
    else
      respond_to do |format|
        format.html # new.html.erb
      end
    end
  end

  def edit
    @squad_member = SquadMember.find(params[:id])

    if current_user == @squad_member.user || current_user.admin?
      respond_to do |format|
        format.html
      end
    end
  end

  def create
    @squad_member = SquadMember.new(params[:squad_member])
    @squad_member.squad = Squad.first # Lock to 404
    @squad_member.user = current_user

    respond_to do |format|
      if @squad_member.save
        format.html { redirect_to root_path, :notice => 'Squad member was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @squad_member = SquadMember.find(params[:id])
    @squad_member.squad = Squad.first # Lock to 404

    if current_user == @squad_member.user || current_user.admin?
      respond_to do |format|
        if @squad_member.update_attributes(params[:squad_member])
          format.html { redirect_to root_path, :notice => 'Squad member was successfully updated.' }
        else
          format.html { render action: "edit" }
        end
      end
    end
  end

  def destroy
    @squad_member = SquadMember.find(params[:id])
    if current_user == @squad_member.user || current_user.admin?
      @squad_member.destroy

      respond_to do |format|
        format.html { redirect_to squad_members_url }
      end
    end
  end
end
