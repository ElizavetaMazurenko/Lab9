class ExplicitController < ApplicationController
 def in; end

 def ajax
  m = params[:m]
  @result = if !m || m.empty?
             @kol = 0
             'Введите число'
            else
             str = ''
             @kol = (reverse_number m).size
             (reverse_number m).each { |x| str += '<tr><td>' + x.to_s + '</td><td>' + (x**2).to_s + '</td></tr>' }
             str
            end

  respond_to do |format|
   format.json { render json: { result: @result, kol: @kol } }
  end
 end

 private

 def reverse_number(number)
  (0..number.to_i).select { |x| (x.to_s.reverse == x.to_s) && ((x**2).to_s.reverse == (x**2).to_s) }
 end
end
