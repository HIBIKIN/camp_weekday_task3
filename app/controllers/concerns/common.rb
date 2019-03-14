module Common
  extend ActiveSupport::Concern

  def calculation
    calc = params[:calc]
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    @answer = case calc 
              when "addition"
                num1 + num2
              when "subtraction"
                num1 - num2
              when "multiplication"
                num1 * num2
              when "division"
                begin
                  "#{num1 / num2}..#{num1 % num2}"
                rescue => e
                  e
                end
              else
                "URLが間違っています"
              end
  end
end