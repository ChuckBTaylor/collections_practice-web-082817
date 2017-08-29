require 'pry'

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort {|a,b| b <=> a}
end

def sort_array_char_count(array)
  array.sort {|a,b| a.size <=> b.size}
end

def swap_elements(array)
  holder = array[1]
  array[1] = array[2]
  array[2] = holder
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  sandwich = []
  array.each do |string|
    string[2] = "$"
    sandwich << string
  end
  sandwich
end

def find_a(array)
  array.select do |string|
    string.downcase.start_with?('a')
  end
end

def sum_array(array)
  array.reduce{|bear, n| bear + n}
end

def add_s(array)
  array.each_with_index.collect do |item, index|
    index != 1 ? item += "s" : item
  end
end
