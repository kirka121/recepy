module FormHelper
  def setup_recepy(recepy)
    recepy.ingredients.build
    return recepy
  end
end