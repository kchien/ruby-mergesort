require 'sort/mergesort'

RSpec.describe Sort::Mergesort do
  it "sorts a list of one element"  do
    expect(Sort::Mergesort.new.sort([3])).to eq([3])
  end

  it "sorts a list of two elements that are already in order" do
    expect(Sort::Mergesort.new.sort([1,2])).to eq([1,2])
  end

  it "sorts a list of two elements that are not in order" do
    expect(Sort::Mergesort.new.sort([2,1])).to eq([1,2])
  end

  it "determines the midpoint of the list to sort" do
    expect(Sort::Mergesort.new.midpoint_of([1,2])).to eq 1
  end

  it "determines the midpoint of an even list" do
    expect(Sort::Mergesort.new.midpoint_of([1,2,3,4])).to eq 2
  end

  describe "merging" do
    it "merges two arrays of one element each, where the 'left' array is smaller than the 'right'" do
      expect(Sort::Mergesort.new.merge([1], [2])).to eq [1,2]
    end

    it "merges two arrays of one element each, where the 'right' array is smaller than the 'left'" do
      expect(Sort::Mergesort.new.merge([4], [3])).to eq [3,4]
    end

    context "arrays to merge have two elements each" do
      it "merges the two arrays when they are already in order" do
        expect(Sort::Mergesort.new.merge([1,2], [3,4])).to eq [1,2, 3,4]
      end

      it "merges the two arrays when they are not in order"

    end
  end
end
