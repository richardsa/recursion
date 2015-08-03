# recursive merge sort method (see http://en.wikipedia.org/wiki/Merge_sort)
# adapted from http://www.cs.cmu.edu/~15110-f12/Unit05PtC-handout.pdf
def merge_sort(ary)
  #left = [], right = [], answer = []
  return ary if ary.length == 1
  mid = ary.length / 2
  left = ary[0..mid-1]
  right = ary[mid..-1]
  left = merge_sort(left)
  right = merge_sort(right)
  answer = merge(left,right)
  return answer
end

def merge(left, right)
  i = 0
  j = 0
  answer = []
 
  while ((i < left.length) && (j < left.length)) do
    if (left[i] <= right[j])
      answer << left[i]
      i += 1
    else
      answer << right[j]
      j += 1
    end
  end
  
  if (i < left.length)
    for x in (i..left.length-1) do
      answer << left[i]
     end
  else
    for x in (j..right.length-1) do
      answer << right[j]
    end
  end
  return answer
   
end



print "#{merge_sort([408, 2, 3, 4, 5, 6])} \n"

print "#{merge_sort([2,100,4,2,22,0,55,-32,5,44])}\n"

print "#{merge_sort([0, 2, 1, 4, 3, 5])}\n"
