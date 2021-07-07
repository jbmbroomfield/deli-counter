def line(katz_deli)
    puts case katz_deli.size
    when 0
        "The line is currently empty."
    else
        "The line is currently:#{places(katz_deli)}"
    end
end

def places(katz_deli)
    result = ""
    katz_deli.each.with_index(1) do |name, index|
        result << " #{index}. #{name}"
    end
    result
end 

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
    puts case katz_deli.size
    when 0
        "There is nobody waiting to be served!"
    else
        "Currently serving #{katz_deli.shift}."
    end
end