function result = myFunction(input)
% This function demonstrates an uncommon MATLAB error related to implicit expansion.
  if input > 10
    result = input * 2;  %This will cause an error if input is a vector or matrix
  else
    result = input + 5; 
  end
end