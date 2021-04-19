#!/usr/bin/env ruby
def bubbleSort arr
  (0..arr.size - 1).each do |i|
    (0..arr.size - 1).each { |j| arr[i], arr[j] = arr[j], arr[i] if arr[i] < arr[j] }
  end
  return arr
end

def quickSort arr
  g, l = [], []
  arr.size <= 1 ? (return arr) : (pivot = arr.pop)
  arr.each { |i| i > pivot ? g.push(i) : l.push(i) }
  return quickSort(l) + [pivot] + quickSort(g)
end

p arr = Array.new(10) { |i| rand(-10..10)}
p bubbleSort arr
p quickSort arr
