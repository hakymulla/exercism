pub fn is_pangram(sentence: ByteArray) -> bool {
    // panic!("implement `is_pangram`")
    let sentence_len = sentence.len();
    let mut is_pangram = true;

    if sentence_len < 26 {
        is_pangram = false;
    }

    for chr in 'a'..'z'_u8{
        if is_pangram == false {
            break;
        }

        let mut index = 0;
        loop {
            if index == sentence_len{
                is_pangram = false;
                break;
            }

            let value = switch_char(sentence.at(index).unwrap());
            if chr == value {
                break;
            } 
            index += 1;
        }
    };
    return is_pangram;
}

fn switch_char(chr: u8) -> u8 {
    let mut output = chr;
    if chr >= 'A' && chr <= 'Z' {
        output = chr + 32;
    }
    return output;
}