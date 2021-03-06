class CompInfosController < ApplicationController
  # GET /comp_infos
  # GET /comp_infos.json
  def index
    render :layout => "index_layout"
    @comp_infos = CompInfo.all

  end

  def home
     @comp_infos = CompInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comp_infos }
    end
  end

  # GET /comp_infos/1
  # GET /comp_infos/1.json
  def show
    @comp_info = CompInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comp_info }
    end
  end

  # GET /comp_infos/new
  # GET /comp_infos/new.json
  def new
    @comp_info = CompInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comp_info }
    end
  end

  # GET /comp_infos/1/edit
  def edit
    @comp_info = CompInfo.find(params[:id])
  end

  # POST /comp_infos
  # POST /comp_infos.json
  def create
    @comp_info = CompInfo.new(params[:comp_info])

    respond_to do |format|
      if @comp_info.save
        CompMailer.mysubmit(@comp_info).deliver
        format.html { redirect_to :controller => 'comp_infos', :action => 'success' }
        format.json { render json: @comp_info, status: :created, location: @comp_info }
      else
        format.html { render action: "new" }
        format.json { render json: @comp_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comp_infos/1
  # PUT /comp_infos/1.json
  def update
    @comp_info = CompInfo.find(params[:id])

    respond_to do |format|
      if @comp_info.update_attributes(params[:comp_info])
        format.html { redirect_to @comp_info, notice: 'Comp info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comp_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comp_infos/1
  # DELETE /comp_infos/1.json
  def destroy
    @comp_info = CompInfo.find(params[:id])
    @comp_info.destroy

    respond_to do |format|
      format.html { redirect_to comp_infos_url }
      format.json { head :no_content }
    end
  end

  def submit_res
    @comp_info = CompInfo.new
    #@user = User.find(params[:id])
    #@user = User.where(:id => params[:id])
    #@vipbbsrsbb = Vipbbsrsbb.find(params[:company_email])
    
    CompMailer.mysubmit(@comp_info.comp_name).deliver
    #@email = Vipbbsrsbb.all
    #@comp = Vipbbsrsbb.all
    #UserMailer.send_reserves(@email,@comp).deliver
    redirect_to(:controller => 'comp_info',:action => 'index')
  end

  def success  
    render :layout => "success"
  end

end
