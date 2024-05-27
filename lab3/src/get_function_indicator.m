function result_vector = get_function_indicator(input_vector, left_border, right_border)
    result_vector = (input_vector >= left_border & input_vector <= right_border) * 1; 
endfunction

# "*1" is needed for transform from bool to double