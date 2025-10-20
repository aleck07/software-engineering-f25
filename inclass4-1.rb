def function_1(x)
  if x == 99
    return nil
  end
  x + 1
end

def function_2(x)
  if x == 99
    raise IndexError
  end
  x + 1
end

def function_1_wrapped(x)
  if function_1(x) == nil
    raise IndexError
  end
end

def function_2_wrapped(x)
  begin 
    function_2(x)
  rescue IndexError
    return nil
  end
end

val = 98
function_1_wrapped(val)
function_2_wrapped(val)
print("Ran function 1 and 2 wrapped without errors")
val += 1
function_2_wrapped(val)
function_1_wrapped(val)