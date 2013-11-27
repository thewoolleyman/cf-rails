class DonglesController < ApplicationController
  # GET /dongle
  # GET /dongle.xml
  def index
    @dongles = Dongle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dongles }
    end
  end

  # GET /dongle/1
  # GET /dongle/1.xml
  def show
    @dongle = Dongle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dongle }
    end
  end

  # GET /dongle/new
  # GET /dongle/new.xml
  def new
    @dongle = Dongle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dongle }
    end
  end

  # GET /dongle/1/edit
  def edit
    @dongle = Dongle.find(params[:id])
  end

  # POST /dongle
  # POST /dongle.xml
  def create
    @dongle = Dongle.new(params[:dongle])

    respond_to do |format|
      if @dongle.save
        format.html { redirect_to(@dongle, :notice => 'Dongle was successfully created.') }
        format.xml  { render :xml => @dongle, :status => :created, :location => @dongle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dongle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dongle/1
  # PUT /dongle/1.xml
  def update
    @dongle = Dongle.find(params[:id])

    respond_to do |format|
      if @dongle.update_attributes(params[:dongle])
        format.html { redirect_to(@dongle, :notice => 'Dongle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dongle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dongle/1
  # DELETE /dongle/1.xml
  def destroy
    @dongle = Dongle.find(params[:id])
    @dongle.destroy

    respond_to do |format|
      format.html { redirect_to(dongle_url) }
      format.xml  { head :ok }
    end
  end
end
