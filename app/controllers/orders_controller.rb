class OrdersController < ApplicationController

    def new
      @product_name = Product.find(params[:product_id]).name
      @companies_select = []
      Cost.where(product_id: params[:product_id]).each do |c|
        @companies_select << [ c.company.name+": "+ c.cost.to_s + " руб."  , c.id ]
      end

    end


    def create
      o = Order.new
      o.user_id = current_user.id
      o.cost_id = params[:order][:cost].to_i
      o.amount = params[:order][:amount].to_i
      o.delivered = params[:order][:delivered]
      o.save



      # change invoice of company if delivered
      if o.delivered?
        inv = o.cost.company.invoice
        o.cost.company.update(invoice: inv+o.amount*o.cost.cost)

        # change plan be cause of we make order on products
        pg = o.cost.product.product_group
        pg.plan = pg.plan-o.amount
        pg.save

      end

      redirect_to orders_path

      end



      def index

        # If we want to get orders for specific company
        if not params[:company_id].nil?
          @orders = []
            @text_add_to_title = " : " + Company.find(params[:company_id].to_i).name

          Order.all.each do |o|

            if o.cost.company_id == params[:company_id].to_i
              @orders << o
            end

          end


        else
                  @orders = Order.all
        end


      end

      def update

        o = Order.find(params[:order_id])
        o.delivered = true

        # when order is delivered update invoice
        inv = o.cost.company.invoice
        o.cost.company.update(invoice: inv+o.amount*o.cost.cost)

        pg = o.cost.product.product_group
        pg.plan = pg.plan-o.amount

        pg.save
        o.save



      end

end
