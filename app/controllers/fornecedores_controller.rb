class FornecedoresController < ApplicationController
  # GET /fornecedores
  # GET /fornecedores.json
  def index
    @fornecedores = Fornecedor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fornecedores }
    end
  end

  # GET /fornecedores/1
  # GET /fornecedores/1.json
  def show
    @fornecedor = Fornecedor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fornecedor }
    end
  end

  # GET /fornecedores/new
  # GET /fornecedores/new.json
  def new
    @fornecedor = Fornecedor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fornecedor }
    end
  end

  # GET /fornecedores/1/edit
  def edit
    @fornecedor = Fornecedor.find(params[:id])
  end

  # POST /fornecedores
  # POST /fornecedores.json
  def create
    @fornecedor = Fornecedor.new(params[:fornecedor])

    respond_to do |format|
      if @fornecedor.save
        format.html { redirect_to @fornecedor, notice: 'Fornecedor was successfully created.' }
        format.json { render json: @fornecedor, status: :created, location: @fornecedor }
      else
        format.html { render action: "new" }
        format.json { render json: @fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fornecedores/1
  # PUT /fornecedores/1.json
  def update
    @fornecedor = Fornecedor.find(params[:id])

    respond_to do |format|
      if @fornecedor.update_attributes(params[:fornecedor])
        format.html { redirect_to @fornecedor, notice: 'Fornecedor was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedores/1
  # DELETE /fornecedores/1.json
  def destroy
    @fornecedor = Fornecedor.find(params[:id])
    @fornecedor.destroy

    respond_to do |format|
      format.html { redirect_to fornecedores_url }
      format.json { head :ok }
    end
  end
end
