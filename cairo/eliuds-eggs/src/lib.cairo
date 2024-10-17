pub fn eggCount(number: u64) -> u64 {
    // panic!("implement `eggCount`")
    let mut quotient: u64 = number;
    let mut one_bit_count: u64 = 0;

    loop {
        if (quotient == 0) {
            break;
        }

        if (quotient % 2 == 1) {
            one_bit_count += 1;
        }

        quotient = quotient / 2;
    };
    return one_bit_count;
}