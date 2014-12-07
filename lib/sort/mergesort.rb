module Sort
  class Mergesort
    def sort(list)
      return list if list.length == 1

      #swap
      if list[0] > list[1]
        [ list[1], list[0] ]
      else
        list
      end
    end

    def midpoint_of(list)
      list.length / 2
    end

    def merge left, right
      result = []
      i = 0
      j = 0
      while (result.length < (left.length + right.length))
       if j == right.length
          #all done on right; put all of left in result
	  result.concat left
       elsif i < left.length && left[i] < right[j]
	  result << left[i]
          i = i + 1
        else
          result << right[j]
	  j = j + 1
	end
      end
      result
    end

  end
end
