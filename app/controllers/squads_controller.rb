class SquadsController < ApplicationController

  def index
    @squads = Squad.all

    respond_to do |format|
      format.html # index.html.erb
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
