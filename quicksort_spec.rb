require 'rspec'
require_relative 'quicksort'

describe 'quicksort' do
  it 'sorts' do
    unsorted_array = [1,5,2,8,9,5,3,78,4,7,8,0]
    expect(quicksort(unsorted_array)).to eq([0,1,2,3,4,5,5,7,8,8,9,78])
  end
end
