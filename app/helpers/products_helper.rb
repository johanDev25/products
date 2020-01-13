module ProductsHelper
  def form_title
  @product.new_record? ? "Publicar Producto" : "Crear Producto"
  end
end
