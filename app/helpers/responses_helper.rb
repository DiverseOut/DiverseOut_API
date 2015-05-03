module ResponsesHelper

  def percentage(numerator, denominator)
    if denominator == 0
      return 0
    else
      ((numerator.to_f / denominator.to_f) * 100).round
    end
  end

end
