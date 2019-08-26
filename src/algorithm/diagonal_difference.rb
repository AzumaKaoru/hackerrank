class DiagonalDifference
  def diagonal_difference(array)
    primary_diagonal  = array.map.with_index { |ar, index|
      ar[array.size - (index + 1)]
    }.sum

    secondary_diagonal  = array.map.with_index { |ar, index|
      ar[index]
    }.sum

    (primary_diagonal - secondary_diagonal).abs
  end
end