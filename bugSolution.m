function result = myFunction(input)
% This function demonstrates a corrected version handling vector/matrix inputs.
  if ~isscalar(input)
    result = zeros(size(input));  % Pre-allocate the result to match input dimensions
    for i = 1:numel(input)
      if input(i) > 10
        result(i) = input(i) * 2; 
      else
        result(i) = input(i) + 5;
      end
    end
  elseif input > 10
    result = input * 2; 
  else
    result = input + 5; 
  end
end