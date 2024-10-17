pub fn encode(phrase: ByteArray) -> ByteArray {
    let mut result: ByteArray = Default::default();
    let string_len = phrase.len();

    let mut index = 0;
    loop {
        if (index == string_len) {
            break;
        }

        let current = phrase.at(index).unwrap();
        if  (result.len() % 6 == 5) && (index != string_len-1) {
            result.append_word(32.into(), 1);
        }

        if (current >= 97) && (current <= 122) {
            result.append_word(((current+25) - (current-97)*2).into(), 1);
        }
       
        if (current >= 48 && current <= 57) {
            result.append_word(current.into(), 1);
        }

        if (current >= 65 && current <= 90){
            let current = (current + 32);
            result.append_word(((current+25) - (current-97)*2).into(), 1);
        }
        index += 1;
    };
    return result;
}

pub fn decode(phrase: ByteArray) -> ByteArray {
    let mut result: ByteArray = Default::default();
    let string_len = phrase.len();

    let mut index = 0;
    loop {
        if (index == string_len) {
            break;
        }

        let current = phrase.at(index).unwrap();

        if (current >= 97) && (current <= 122) {
            result.append_word(((current+25) - (current-97)*2).into(), 1);

        }

        if (current >= 48 && current <= 57) {
            result.append_word(current.into(), 1);
        }

        if (current >= 65 && current <= 90){
            let current = (current + 32);
            result.append_word(((current+25) - (current-97)*2).into(), 1);
        }

        index += 1;
        
    };
    return result;
}