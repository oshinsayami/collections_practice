require 'pry'
def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do|a,b|
        b<=>a
    end
end

def sort_array_char_count(array)
    array.sort do |a,b|
        if a.length == b.length
            0
        elsif a.length < b.length
            -1
        elsif a.length > b.length
            1
        end
    end
end

def swap_elements(array)
    a=array[1]
    array[1]=array[2]
    array[2]=a
    array

end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    new_array=[]
    arr=[]
    array.each do |a|
       arr = a.split('')
       arr[2]="$"
       new_array.push(arr.join(""))
    end
    # binding.pry
    new_array
end

def find_a(array)
    n=[]
    new_array=[]
    array.select do |a|
        n = a.split('')
        if n[0] == "a"
            new_array=a
        end
    end

end

def sum_array(array)
    array.inject {|sum, n| sum + n}
end

def add_s(array)
    new_array=[]
    array.each_with_index do |num,idx|
      
        if idx != 1
            new_array.push(num<<"s")
        else
            new_array.push(num)
        end

        
    end
    new_array

end