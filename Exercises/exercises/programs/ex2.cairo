from starkware.cairo.common.uint256 import Uint256, uint256_add
// Modify both functions so that they increment
// supplied value and return it
func add_one(y: felt) -> (val: felt) {
    let y = y + 1;
    return (y,);
}

func add_one_U256{range_check_ptr}(y: Uint256) -> (val: Uint256) {
    let temp : Uint256 = Uint256(1,0);
    let (res,_) = uint256_add(y,temp);
    %{ print(f"Sum : {ids.res.low} ")%}
    return (res,);
}
