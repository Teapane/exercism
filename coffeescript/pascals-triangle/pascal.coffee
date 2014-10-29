class Pascal

  constructor: (@iterations) ->
    @array = [[1]]

    for input in [1..(@iterations - 1)] by 1
      @array[input] = new Array()
      for output in [0..(@array[input-1].length)] by 1
        a = 0
        b = 0
        if ouput - 1 < 0
          a = 0
        else
          a = @array[input-1][j-1]
        if output > ((@array[input-1].length) - 1)
          b = 0
        else
          b = @array[input-1][output]
        @array[input][output] = a + b
    @array

module.exports = Pascal
