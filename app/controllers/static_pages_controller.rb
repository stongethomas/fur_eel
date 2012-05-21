class StaticPagesController < ApplicationController




  def home
  end

  def admin
  end

  def perhaps_another_time
  	render :layout => 'plain'
  end

  def download
  	render :layout => 'plain'
  	
  end

  def free_album
  	render :layout => 'plain'

  end
 



end
