class ChangeGenerator
  def convert(change)
    "£#{change.round(0).to_s}"
  end
end