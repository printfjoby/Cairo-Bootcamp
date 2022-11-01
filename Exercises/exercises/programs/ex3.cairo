// Perform and log output of simple arithmetic operations
from starkware.cairo.common.math import unsigned_div_rem

func simple_math{range_check_ptr}() {
   // adding 13 +  14
    let sum = 13 + 14;
    %{ print(f"Sum : {ids.sum} ")%}

   // multiplying 3 * 6
    let product = 3 * 6;
    %{ print(f"Sum : {ids.product} ")%}

   // dividing 6 by 2
    let div = 6 / 2;
    %{ print(f"Dividing 6 by 2: {ids.div} ")%}

   // dividing 70 by 2
    let (div_rem1,_) = unsigned_div_rem(70,2);
    %{ print(f"Dividing 70 by 2: {ids.div_rem1} ")%}

   // dividing 7 by 2
   let (div_rem,_) = unsigned_div_rem(7,2);
    %{ print(f"Dividing 7 by 2: {ids.div_rem} ")%}

    return ();
}
