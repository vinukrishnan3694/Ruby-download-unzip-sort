
require 'csv'
require 'rubygems'
require 'zip'
require 'net/http'

require_relative 'zip_download'
require_relative 'unzip_file'

class MergeSort
  def merge_sort(list)
    return list if list.size <= 1
    mid   = list.size / 2
    left  = list[0, mid]
    right = list[mid, list.size]
    merge(merge_sort(left), merge_sort(right))
  end
  
  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    @b=sorted.concat(left).concat(right)
  end
  puts"Sorted and Saved"
  def write_file
  File.open("Sorted", 'w') { |file| file.puts(@b) }
  end
end

@sort=MergeSort.new
@sort.merge_sort($ar)
@sort.write_file()