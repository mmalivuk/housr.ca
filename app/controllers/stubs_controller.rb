class StubsController < ApplicationController
  # GET /stubs
  # GET /stubs.json
  def index
    @stubs = Stub.order(:city).page(params[:page]).per(50)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stubs }
    end
  end

  # GET /stubs/1
  # GET /stubs/1.json
  def show
    @stub = Stub.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stub }
    end
  end

  # GET /stubs/new
  # GET /stubs/new.json
  def new
    @stub = Stub.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stub }
    end
  end

  # GET /stubs/1/edit
  def edit
    @stub = Stub.find(params[:id])
  end

  # POST /stubs
  # POST /stubs.json
  def create
    @stub = Stub.new(params[:stub])

    respond_to do |format|
      if @stub.save
        format.html { redirect_to @stub, notice: 'Stub was successfully created.' }
        format.json { render json: @stub, status: :created, location: @stub }
      else
        format.html { render action: "new" }
        format.json { render json: @stub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stubs/1
  # PUT /stubs/1.json
  def update
    @stub = Stub.find(params[:id])

    respond_to do |format|
      if @stub.update_attributes(params[:stub])
        format.html { redirect_to @stub, notice: 'Stub was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stubs/1
  # DELETE /stubs/1.json
  def destroy
    @stub = Stub.find(params[:id])
    @stub.destroy

    respond_to do |format|
      format.html { redirect_to stubs_url }
      format.json { head :ok }
    end
  end
end
