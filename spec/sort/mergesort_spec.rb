module Sort
  class Mergesort
    def sort(list)
      list
    end
  end
end

RSpec.describe Sort::Mergesort do
  it "sorts a list of one element"  do
    expect(Sort::Mergesort.new.sort([3])).to eq([3])
  end
end
