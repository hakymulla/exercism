pub fn squareOfSum(number: u64) -> u64 {
    // panic!("implement `squareOfSum`")
    let mut output: u64 = 0;
    let mut index = 1;
    loop {
        if (index > number ) {
            break;
        }
        output += index;
        index += 1;
    };
    return (output * output);
}

pub fn sumOfSquares(number: u64) -> u64 {
    // panic!("implement `sumOfSquares`")
    let mut output: u64 = 0;
    let mut index = 1;
    loop {
        if (index > number) {
            break;
        }
        output += (index * index);
        index += 1;
    };
    return output;
}

pub fn differenceOfSquares(number: u64) -> u64 {
    // panic!("implement `differenceOfSquares`")
    return squareOfSum(number) - sumOfSquares(number);
}