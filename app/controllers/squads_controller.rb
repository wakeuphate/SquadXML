class SquadsController < ApplicationController

  before_filter :authenticate_user!
  before_filter do
    if params[:action] != 'show'
      redirect_to login_path unless current_user && current_user.admin?
    end
  end

  def index
    if current_user.squad
      redirect_to squad_path(current_user.squad)
    else
      redirect_to new_squad_path
    end
  end

  def show
    @squad = Squad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :layout => false }
    end
  end

  def new
    @squad = Squad.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @squad = Squad.find(params[:id])
  end

  def create
    @squad = Squad.new(params[:squad])

    respond_to do |format|
      if @squad.save
        format.html { redirect_to @squad, notice: 'Squad was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @squad = Squad.find(params[:id])

    respond_to do |format|
      if @squad.update_attributes(params[:squad])
        format.html { redirect_to @squad, notice: 'Squad was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @squad = Squad.find(params[:id])
    @squad.destroy

    respond_to do |format|
      format.html { redirect_to squads_url }
    end
  end
end
