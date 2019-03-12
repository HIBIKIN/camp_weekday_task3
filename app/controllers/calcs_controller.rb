class CalcsController < ApplicationController
  def show
    # URLからのパラメータ受け取り
    calc = params[:calc]
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    # calcで場合分けし、計算結果を@answerに代入
    @answer = case calc 
              when "addition"
                num1 + num2
              when "subtraction"
                num1 - num2
              when "multiplication"
                num1 * num2
              when "division"
                num2 == 0 ? "0で割ることはできません" : num1 / num2
              else
                "URLが間違っています"
              end
  end
end
