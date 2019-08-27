require 'matrix'

class DiagonalDifference
  def diagonal_difference(arr)
    (Matrix.columns(arr).trace - Matrix.columns(arr.reverse).trace).abs
  end
end