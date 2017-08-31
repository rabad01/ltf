module CurrentCart
  extend ActiveSupport::Concern

    private

      def set_cart
        @order = Order.find(session[:order_id])
      rescue ActiveRecord::RecordNotFound
        @order = Order.create
        session[:order_id] = @order.id
		@order
      end
end
