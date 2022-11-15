// Return summation of every number below and up to including n
func calculate_sum(n: felt) -> (sum: felt) {
    if(n == 1){
        return (1,);
    }
    let (temp_sum) = calculate_sum(n=n-1);
    let new_sum = temp_sum + n;
    return(sum=new_sum);
}
