class ContatosController < ApplicationController
  #layout "admin"
  before_action :set_contato, only: %i[ show edit update destroy ]
  before_action :set_setor_id_options, only: [:new, :create, :edit, :update, :show]
  # GET /contatos or /contatos.json
  def index
    @contatos = Contato.all
  end

  # GET /contatos/1 or /contatos/1.json
  def show
  end

  # GET /contatos/new
  def new
    @contato = Contato.new
  end

  # GET /contatos/1/edit
  def edit
  end

  # POST /contatos or /contatos.json
  def create
    @contato = Contato.new(contato_params)

    respond_to do |format|
      if @contato.save
        format.html { redirect_to @contato, notice: "Contato was successfully created." }
        format.json { render :show, status: :created, location: @contato }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contatos/1 or /contatos/1.json
  def update
    respond_to do |format|
      if @contato.update(contato_params)
        format.html { redirect_to @contato, notice: "Contato was successfully updated." }
        format.json { render :show, status: :ok, location: @contato }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contatos/1 or /contatos/1.json
  def destroy
    @contato.destroy
    respond_to do |format|
      format.html { redirect_to contatos_url, notice: "Contato was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contato
      @contato = Contato.find(params[:id])
    end

    def set_setor_id_options
      @setor_id_options = Setor.all.pluck(:descrisao, :id)
    end
    # Only allow a list of trusted parameters through.
    def contato_params
      params.require(:contato).permit(:descrisao, :ramal, :ddr, :celular, :skype, :setor_id)
    end
end
