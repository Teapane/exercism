Pascal = require './pascal'

describe 'Pascal', ->
  it 'with one row', ->
    arr = new Pascal(1)
    expect(arr.array).toEqual [[1]]

  it 'with two rows', ->
    arr = new Pascal(2)
    expect(arr.array).toEqual [[1], [1,1]]

  it 'with three rows', ->
    arr = new Pascal(3)
    expect(arr.array).toEqual [[1], [1,1], [1,2,1]]

  it 'with four rows', ->
    arr = new Pascal(4)
    expect(arr.array).toEqual [[1], [1,1], [1,2,1], [1,3,3,1]]

  it 'with five rows', ->
    arr = new Pascal(5)
    expect(arr.array).toEqual [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1]]

  it 'should equal 20th row', ->
    arr = new Pascal(20)
    expect(arr.array[19]).toEqual [1, 19, 171, 969, 3876, 11628, 27132, 50388, 75582, 92378, 92378, 75582, 50388, 27132, 11628, 3876, 969, 171, 19, 1]

