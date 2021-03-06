class AutoresController < ApplicationController
  before_action :set_autor, only: [:show, :edit, :update, :destroy]

  # GET /autores
  # GET /autores.json
  #def index
  #  @autores = Autor.all
  #end


def index
  respond_to do |format|
    format.html
    format.json { render json: AutoresDatatable.new(view_context) }
  end
end


  # GET /autores/1
  # GET /autores/1.json
  def show
  end

  # GET /autores/new
  def new
    @autor = Autor.new
  end

  # GET /autores/1/edit
  def edit
  end

  # POST /autores
  # POST /autores.json
  def create
    @autor = Autor.new(autor_params)

    respond_to do |format|
      if @autor.save
        format.html { redirect_to @autor, notice: 'Autor was successfully created.' }
        format.json { render :show, status: :created, location: @autor }
      else
        format.html { render :new }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autores/1
  # PATCH/PUT /autores/1.json
  def update
    respond_to do |format|
      if @autor.update(autor_params)
        format.html { redirect_to @autor, notice: 'Autor was successfully updated.' }
        format.json { render :show, status: :ok, location: @autor }
      else
        format.html { render :edit }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autores/1
  # DELETE /autores/1.json
  def destroy
    @autor.destroy
    respond_to do |format|
      format.html { redirect_to autores_url, notice: 'Autor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autor
      @autor = Autor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autor_params
      params.require(:autor).permit(:sales_org, :vendor, :first_name, :last_name, :email, :telephone, :tax_number, :tax_type, :status, :idsap, :ext_email, :ext_heredero, :ext_telefono, :ext_envia_reporte_liq, :ext_envia_reporte_stock, :ext_email_alternativo)
    end
end
