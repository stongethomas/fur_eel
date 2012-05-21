class FansController < ApplicationController
  
before_filter :is_admin, only: [:new, :create, :edit, :update, :delete, :destroy, :admin]
  skip_before_filter :is_admin, only: [:new, :create]
  # GET /fans
  # GET /fans.json

  layout 'application', :only=> :admin
  def index
    @fans = Fan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fans }
    end
  end

  def admin

    
  @cities = Fan.find_by_sql("select DISTINCT city from fans")
  @states = Fan.find_by_sql("select DISTINCT state from fans")
  @countries = Fan.find_by_sql("select DISTINCT country from fans")
  @fans = Fan.find(:all, :order => "country asc, state asc, city asc, email asc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fans }
    end
  end

  # GET /fans/1
  # GET /fans/1.json
  def show
    @fan = Fan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fan }
    end
  end

  # GET /fans/new
  # GET /fans/new.json
  def new

    @fan = Fan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fan }
    end
  end

  # GET /fans/1/edit
  def edit
    @fan = Fan.find(params[:id])
  end

  # POST /fans
  # POST /fans.json
  def create
    @fan = Fan.new(params[:fan])

    respond_to do |format|
      if @fan.save
		FanMailer.welcome_email(@fan).deliver
        format.html { redirect_to "/perhaps_another_time" }
        format.json { render json: @fan, status: :created, location: @fan }
      else
        format.html { render action: "new" }
        format.json { render json: @fan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fans/1
  # PUT /fans/1.json
  def update
    @fan = Fan.find(params[:id])

    respond_to do |format|
      if @fan.update_attributes(params[:fan])
        format.html { redirect_to @fan, notice: 'Fan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fans/1
  # DELETE /fans/1.json
  def destroy
    @fan = Fan.find(params[:id])
    @fan.destroy
	flash[:success] = "user destroyed"
    respond_to do |format|
      format.html { redirect_to fans_url }
      format.json { head :no_content }
    end
  end
  

  
  
end
