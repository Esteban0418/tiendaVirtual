class CarritosController < ApplicationController
  before_action :set_carrito, only: [:show, :edit, :update, :destroy, :add_product, :comprar, :remove_product, :buscar, :sumar_cantidad]

  # GET /carritos
  # GET /carritos.json
  def index
    @carrito = current_user.carrito
    @carritos = @carrito.carrito_productos
  end
  def buscar 
    @product = @carrito.carrito_productos.find(params[:producto_id])
  end
  # GET /carritos/1
  # GET /carritos/1.json
  def show
  end

  def comprar
    # @carrito.restar_productos
    @suma_total = @carrito.sumar_productos
    UserMailer.send_confirmation(current_user.email, @carrito.carrito_productos, @suma_total ).deliver
    # @carrito.carrito_productos.destroy_all
    flash[:success] = "Compra Exitosa"
    redirect_to root_path
  end

  def sumar_cantidad
     @carrito_producto.cantidad_productos  = @carrito_producto.cantidad_productos+1
    @carrito_producto.save
  end
  # GET /carritos/new
  def new
    @carrito = Carrito.new
  end

  def add_product
    @producto = Producto.find(params[:producto_id])
    @carrito_producto = @carrito.carrito_productos.new
    @carrito_producto.producto = @producto
    @carrito_producto.cantidad_productos = 0
    @carrito_producto.cantidad_productos = @carrito_producto.cantidad_productos+1
    @carrito_producto.save
    @carrito.save

  end
  def remove_product
    @carrito.carrito_productos.find_by_producto_id(params[:producto_id]).destroy
  end

  # GET /carritos/1/edit
  def edit
  end

  # POST /carritos
  # POST /carritos.json
  def create
    
    @carrito = Carrito.new(carrito_params)
    
    respond_to do |format|
      if @carrito.save
        format.html { redirect_to @carrito, notice: 'Carrito was successfully created.' }
        format.json { render :show, status: :created, location: @carrito }
      else
        format.html { render :new }
        format.json { render json: @carrito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carritos/1
  # PATCH/PUT /carritos/1.json
  def update
    respond_to do |format|
      if @carrito_producto.update(params[:cantidad_productos])
        format.html { redirect_to @carrito_producto, notice: 'Carrito was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrito_producto }
      else
        format.html { render :edit }
        format.json { render json: @carrito_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carritos/1
  # DELETE /carritos/1.json
  def destroy
    @carrito.destroy
    respond_to do |format|
      format.html { redirect_to carritos_url, notice: 'Carrito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrito
      @carrito = Carrito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrito_params
      params.require(:carrito).permit(:cantidad_productos)
    end
end
