class HomeController < ApplicationController

    def abc

        @pie_chart_data=[]
        Company.all.each {|c| @pie_chart_data << [ c.name , c.invoice ]  }

        ordered_cs = Company.order(:invoice)
        ordered_cs = ordered_cs.reverse()
        @table_data = []
        summ = 0
        additional_part = 0.0

        ordered_cs.each {|c| summ+=c.invoice }


        ordered_cs.each do |c|
          part = c.invoice.to_f/summ.to_f
          additional_part += part


          case additional_part
            when 0.0 .. 0.8
              group = "A"
            when 0.8 .. 0.95
              group = "B"
            when 0.95 .. 100.0
              group = "C"
          end

          @table_data << [c.name, c.invoice, part, group]

        end

        end

    def managers_statistic
          @chart_sign_in_count_data=[]
          @chart_orders_count_data=[]
          User.all.each do |u|
                @chart_orders_count_data << [u.username, Order.where(user_id: u.id).count ]
                @chart_sign_in_count_data << [u.username, u.sign_in_count]
          end

    end

end
