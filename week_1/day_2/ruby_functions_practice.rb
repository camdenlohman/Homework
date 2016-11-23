def return_10()
  num = 10
  return num
end

def add (a,b)
c = a + b
return c
end

def subtract (a,b)
c = a - b
return c
end

def multiply(a,b)
  c = a * b
  return c
end

def divide(a,b)
  c = a / b
  return c
end

def length_of_string(a)
c = a.length
return c
end

  def join_string(a,b)

    c = a + b
    return c
  end

  def add_string_as_number(a,b)
c = a.to_i + b.to_i
return c

  end

  def number_to_full_month_name(a)
    c = a
case c
when 1
  return "January"
when 2
  return "Feburary"
when 3
  return "March"
when 4
  return "April"
when 5
  return "May"
when 6
  return "June"
when 7
  return "July"
when 8
  return "August"
when 9
  return "September"
when 10
  return "October"
when 11
  return "November"
when 12
  return "December"
#else puts "Not a month"

end
end
  def number_to_short_month_name(a)
      c = a
  case c
  when 1
    return "Jan"
  when 2
    return "Feb"
  when 3
    return "Mar"
  when 4
    return "Apr"
  when 5
    return "May"
  when 6
    return "Jun"
  when 7
    return "Jul"
  when 8
    return "Aug"
  when 9
    return "Sep"
  when 10
    return "Oct"
  when 11
    return "Nov"
  when 12
    return "Dec"
  #else puts "Not a month"
  end
end

def volume_of_cube(a)
  c = a**3
  return c
end

def volume_of_sphere(a)
c = (((a**3) * Math::PI) / 3 *4)
return c.round(2)

  end

def fahrenheit_to_celsius(a)
c = (a * 1.8) + 32
return c
end
