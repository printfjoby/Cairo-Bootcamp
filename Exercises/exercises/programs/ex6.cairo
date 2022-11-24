from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin

// Implement a function that sums even numbers from the provided array
func sum_even{bitwise_ptr: BitwiseBuiltin*}(arr_len: felt, arr: felt*, run: felt, idx: felt) -> (
    sum: felt
) {
    if(arr_len == 0){
        return (arr[arr_len],);
    }
    let (temp_sum) = sum_even(arr_len = arr_len -1);
    let new_sum = temp_sum + arr[arr_len];
    return(sum=new_sum);
}
