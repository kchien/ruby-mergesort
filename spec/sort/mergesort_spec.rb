module Sort
  class Mergesort
    def sort(list)
      return list if list.length == 1

      #swap
      [ list[1], list[0] ]
    end
  end
end

RSpec.describe Sort::Mergesort do
  it "sorts a list of one element"  do
    expect(Sort::Mergesort.new.sort([3])).to eq([3])
  end

  it "sorts a list of two elements that are not in order" do
    expect(Sort::Mergesort.new.sort([2,1])).to eq([1,2])
  end
end
