// Return summation of every number below and up to including n
func calculate_sum(n: felt) -> (sum: felt) {
    if(n == 1){
        return (1,);
    }
    let temp_sum = n + calculate_sum(n-1);

    //%{ print(f"Sum : {ids.temp_sum} ")%}
    return(sum=temp_sum);
}
