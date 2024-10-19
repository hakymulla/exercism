#[derive(Debug, Drop, PartialEq)]
pub enum Classification {
    Deficient,
    Perfect,
    Abundant,
}

pub fn classify(number: u64) -> Classification {
    if number == 0 {
        panic!("Classification is only possible for positive integers.");
    }

    if number == 1 {
        return Classification::Deficient;
    }

    let mut half: u64 = number;
    let mut aliquot_sum: u64 = 1;
    let  mut index = 2;
    let sqrt_number =  sqrt(number);

    loop {
        //For any large number NN, you must still check divisibility by smaller numbers (up to sqrt(N))to verify whether it's prime.
        if index > sqrt_number { //its a prime
            break;
        }
        
        if (number % index == 0) {
            half = (number / index);
            aliquot_sum += index;
            if (index == half ) {
                break;
            } else {
                aliquot_sum += half;
            }
        }
        index += 1;
    };

    if aliquot_sum < number {
        Classification::Deficient
    } else if aliquot_sum > number {
        Classification::Abundant
    } else {
        Classification::Perfect
    }
}

fn sqrt(n: u64) -> u64 {
    if n < 0 {
        return 0;
    }
    if n == 0 || n == 1 {
        return n;
    }
    
    let mut start: u64 = 1;
    let mut end: u64 = n;
    let mut mid: u64 = 0;

    while start < end {
        mid = (start + end) / 2;
        if mid * mid == n {
            start = mid + 1;
        } else if mid * mid < n {
            start = mid + 1;
        } else {
            end = mid
        }
    };
    return start - 1;
}

