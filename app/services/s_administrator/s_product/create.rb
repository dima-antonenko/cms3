module SAdministrator
  module SProduct
    class Create

      def initialize(product, params)
        @product = product
        @params = params
      end

      def main
        self.set_static
      end


      protected


      def set_static
        @product.active              = @params[:product][:active].to_i
        @product.name                = @params[:product][:name]
        @product.product_category_id = @params[:product][:product_category_id].to_i
        @product.sku                 = @params[:product][:sku]
        @product.price               = @params[:product][:price].to_i
        @product.description         = @params[:product][:description]
        @product.avatar              = @params[:product][:avatar]
        @product.slug                = @params[:product][:slug]
      end

   

    end
  end
end
