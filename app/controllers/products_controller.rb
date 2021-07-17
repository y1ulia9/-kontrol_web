class ProductsController < ApplicationController




    def index
      # If we want to get orders for specific company
      if not params[:company_id].nil?
        @products = []
        @text_add_to_title = " : " + Company.find(params[:company_id].to_i).name

        Cost.all.each do |c|

          if c.company_id == params[:company_id].to_i
            @products << c.product
          end

        end


      else
                @products = Product.all
      end

    end



    def show

    end


end
