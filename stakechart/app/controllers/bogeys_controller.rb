class BogeysController < ApplicationController
  # GET /bogeys
  # GET /bogeys.xml
  def index
    @bogeys = Bogey.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bogeys }
    end
  end

  # GET /bogeys/1
  # GET /bogeys/1.xml
  def show
    @bogey = Bogey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bogey }
    end
  end

  # GET /bogeys/new
  # GET /bogeys/new.xml
  def new
    @bogey = Bogey.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bogey }
    end
  end

  # GET /bogeys/1/edit
  def edit
    @bogey = Bogey.find(params[:id])
  end

  # POST /bogeys
  # POST /bogeys.xml
  def create
    @bogey = Bogey.new(params[:bogey])

    respond_to do |format|
      if @bogey.save
        flash[:notice] = 'Bogey was successfully created.'
        format.html { redirect_to(@bogey) }
        format.xml  { render :xml => @bogey, :status => :created, :location => @bogey }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bogey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bogeys/1
  # PUT /bogeys/1.xml
  def update
    @bogey = Bogey.find(params[:id])

    respond_to do |format|
      if @bogey.update_attributes(params[:bogey])
        flash[:notice] = 'Bogey was successfully updated.'
        format.html { redirect_to(@bogey) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bogey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bogeys/1
  # DELETE /bogeys/1.xml
  def destroy
    @bogey = Bogey.find(params[:id])
    @bogey.destroy

    respond_to do |format|
      format.html { redirect_to(bogeys_url) }
      format.xml  { head :ok }
    end
  end
end
