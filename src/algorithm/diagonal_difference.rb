require 'matrix'

class DiagonalDifference
  def diagonal_difference(arr)
    (Matrix[*arr].tr - Matrix[*arr.reverse].tr).abs
  end
end