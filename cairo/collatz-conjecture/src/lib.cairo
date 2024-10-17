pub fn steps(number: usize) -> usize {
    let mut n: usize = number;
    if n <= 0 {
        panic!("Only positive integers are allowed")
    }

    let mut steps = 0;
    loop {
        if n == 1 {
            break;
        }

        if (n % 2 == 0) {
            n = n / 2;
        }
        else {
            n = 3 * n + 1;
        }
        steps += 1;
    };
    return steps;
}