pub fn distance(strand1: ByteArray, strand2: ByteArray) -> u256 {
    let strand1_len = strand1.len();
    let strand2_len = strand2.len();

    if strand1_len != strand2_len {
        panic!("strands must be of equal length");
    }

    let mut hamming_distance: u256 = 0;

    let mut index = 0;
    loop {
        if index == strand1_len{
            break;
        }

        if (strand1.at(index) != strand2.at(index)){
            hamming_distance += 1;
        }
        index += 1;
    };

    return hamming_distance;
}