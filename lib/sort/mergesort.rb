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
  end
end
