class SquadsController < ApplicationController

  before_filter :authenticate_user!, :except => [:show, :logo]
  before_filter do
    if params[:action] != 'show' && params[:action] != 'logo'
      redirect_to login_path unless current_user && current_user.admin?
    end
  end

  def logo
    send_file 'public/squad/404.paa', :type => "application/octet-stream", :x_sendfile => true
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
      if current_user
        format.html # show.html.erb
      end
      format.xml { render :layout => false }
    end
  end

  def new
    @squad = Squad.new

    if current_user.admin?
      respond_to do |format|
        format.html # new.html.erb
      end
    end
  end

  def edit
    @squad = Squad.find(params[:id])

    if current_user == @squad.user || current_user.admin?
      respond_to do |format|
        format.html
      end
    end
  end

  def create
    @squad = Squad.new(params[:squad])
    @squad.user = current_user

    if current_user.admin?
      respond_to do |format|
        if @squad.save
          format.html { redirect_to @squad, notice: 'Squad was successfully created.' }
        else
          format.html { render action: "new" }
        end
      end
    end
  end

  def update
    @squad = Squad.find(params[:id])

    if current_user == @squad.user || current_user.admin?
      respond_to do |format|
        if @squad.update_attributes(params[:squad])
          format.html { redirect_to @squad, notice: 'Squad was successfully updated.' }
        else
          format.html { render action: "edit" }
        end
      end
    end
  end

  def destroy
    @squad = Squad.find(params[:id])
    if current_user == @squad.user || current_user.admin?
      @squad.destroy

      respond_to do |format|
        format.html { redirect_to squads_url }
      end
    end
  end
end
