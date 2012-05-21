class VideosController < ApplicationController
  before_filter :is_admin, only: [:new, :create, :edit, :update, :delete, :destroy, :admin]
  # GET /videos
  # GET /videos.json
  def index
   
	@videos = Video.find(:all, :order => "created_at desc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @videos }
    end
  end

  def admin
   
  @videos = Video.find(:all, :order => "created_at desc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @videos }
    end
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @video = Video.find(params[:id])
	@url = "http://www.youtube.com/embed/" + @video.youtube_id + "?HD=1;rel=0;showinfo=0;controls=0"
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @video }
    end
  end

  # GET /videos/new
  # GET /videos/new.json
  def new
    @video = Video.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @video }
    end
  end

  # GET /videos/1/edit
  def edit
    @video = Video.find(params[:id])
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(params[:video])

    respond_to do |format|
      if @video.save
        format.html { redirect_to '/videos/admin', :notice => 'Video was successfully created.' }
        format.json { render :json => @video, :status => :created, :location => @video }
      else
        format.html { render :action => "new" }
        format.json { render :json => @video.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /videos/1
  # PUT /videos/1.json
  def update
    @video = Video.find(params[:id])

    respond_to do |format|
      if @video.update_attributes(params[:video])
        format.html { redirect_to '/videos/admin', :notice => 'Video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @video.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    respond_to do |format|
      format.html { redirect_to '/videos/admin' }
      format.json { head :no_content }
    end
  end
end
