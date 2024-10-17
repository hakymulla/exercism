#[derive(Debug, Drop, PartialEq)]
pub struct Counter {
    pub a: u64,
    pub c: u64,
    pub g: u64,
    pub t: u64
}

pub fn counts(strand: ByteArray) -> Counter {
    // panic!("implement `counts`")
    let strand_len = strand.len();
    let mut counter = Counter {
        a: 0,
        c: 0,
        g: 0,
        t: 0
    };

    let mut index = 0;
    loop {
        if (index == strand_len) {
            break;
        };

        let value = strand.at(index).unwrap();

        if value == 65 {
            counter.a += 1;
        } else if value == 67 {
            counter.c += 1;
        } else if value == 71 {
            counter.g += 1;
        } else if value == 84 {
            counter.t += 1;
        } else {
            panic!("Invalid nucleotide in strand");
        }
        index += 1;
    };

    return counter;
}