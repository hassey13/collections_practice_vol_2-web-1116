# your code goes here
def begins_with_r(array)
    counter = 0
    while counter < array.length
        if !(array[counter][0] === "r")
            return false
        end
        counter +=1
    end
    return true
end

def contain_a(array)
    r_array = []
    counter = 0
    while counter < array.length
        i = 0
        while i < array[counter].length
            if array[counter][i] === "a"
                r_array << array[counter]
            end
            i += 1
        end
        counter +=1
    end
    return r_array.uniq
end

def first_wa(array)
    counter = 0
    while counter < array.length
        if array[counter][0] === "w" && array[counter][1] === "a"
            return array[counter]
        end
        counter +=1
    end
    return false
end

def remove_non_strings(array)
    temp = []
    counter = 0
    while counter < array.length
        if !(array[counter].is_a? String)
            array = array -  [array[counter]]
            counter -= 1
        end
        counter +=1
    end
    return array
end

def count_elements(array)
      count = []
      array.each do |data|
            if my_keys(count).include? data[:name]
               count.each do |obj|
                  obj.each do |key, value|
                        if value.to_s == data[:name]
                              obj[:count] += 1
                        end
                  end
               end
            else
                  count << {name: data[:name], count: 1}
            end
      end
      count
end

def my_keys(array)
   r = []
   array.each do |obj|
      obj.each do |key, value|
         if !r.include? value
            r << value
         end
      end
   end
   return r.inspect
end

def merge_data(keys, data)
   answer = []
   keys.each do |key_obj|
      key_obj.each do |key,value|
         name = key_obj[key]
         data.each do |data_obj|
            if data_obj[name]
               merged_data = data_obj[name]
               merged_data[key] = name
               answer << merged_data
            end
         end
      end
   end
   answer
end

def find_cool(array)
    temp = []
    array.each do |new_hash|
          new_hash.each do |key, value|
                if value == "cool"
                      temp << new_hash
                end

          end

    end
    temp
end

def organize_schools(array)
      organize_schools_hash = {}
      array.each do |school_name, obj|
            obj.each do |key,value|
                  if organize_schools_hash[value]
                        organize_schools_hash[value] << school_name
                  else
                        organize_schools_hash[value] = [school_name]
                  end
            end
      end
      organize_schools_hash
end
