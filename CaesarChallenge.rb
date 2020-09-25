def caesar_cipher(string, num)
    string_to_list=string.bytes
    convert_num=num%26 
    convert_list=string_to_list.map do |string| 
         if string.chr =~ /[A-Za-z]/ then 
            string = check_string(string, convert_num)
         else
            string
         end
        end 
    updated_list= convert_list.map {|string| string.chr}
    return updated_list.join 
    
end 
def check_string(letterLoc, shiftNum)
    newLocation = letterLoc + shiftNum;
    if newLocation.chr =~ /[A-Za-z]/ then 
        if (newLocation>96 and newLocation<123 and letterLoc>96 and letterLoc<123)
            return newLocation
        elseif (newLocation>64 and newLocation<91 and letterLoc>64 and letterLoc<91)
            return newLocation
        else
            return newLocation-26
        end 
    elseif (shiftNum>0) 
        newLocation=newLocation-26
        return newLocation
    elseif (shiftNum<0)
        newLocation=newLocation+26 
        return newLocation
    end 
end 
p caesar_cipher("a!", 1)
        

