class LessonController < ApplicationController
  def step1
    render plain: "Hello, #{params[:name]}."
  end

  def step2
    render plain: params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action: "step4"
  end

  def step4
    render plain: "You moved step4."
  end

  def step5
    flash[:notice] = "move to step6."
    redirect_to action: "step6"
  end

  def step6
    render plain: flash[:notice]
  end

  def step7
    @price = (2000 * 1.08).floor
  end

  def step8
    @price = 10
    render "step7"
  end

  def step9
    @comment = "<script>alert('danger!')</script>hello."
  end

  def step10
    @comment = "<strong>つよい(こなみ)</strong>"
  end

  def step11
    @population = 114514
    @surface = 141.31
  end

  def step12
    @time = Time.current
  end

  def step13
    @population = 127767944
  end

  def step14
    @message = "NDK?NDK?\nああああああ"
  end

  def step17
    @zaiko = 114514
  end

  def step18
    @items = {"フライパン" => 2680, "ワイングラス" => 2550,
              "ペッパーミル" => 4515, "ピーラー" => 945}
  end
end
