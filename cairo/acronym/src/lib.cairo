pub fn abbreviate(phrase: ByteArray) -> ByteArray {
    let mut abbreviation: ByteArray = Default::default();
    let string_len = phrase.len();

    let mut index = 0;
    loop {
        if (index == string_len) {
            break;
        }

        let current = phrase.at(index).unwrap();
        if index == 0  {
            abbreviation.append_word(current.into(), 1)
        }
       
        if char_checker(current) == false {
            let current = phrase.at(index + 1).unwrap();
            if char_checker(current) {
                if (current < 97) {
                    abbreviation.append_word((current).into(), 1);
                }
                else {
                    abbreviation.append_word((current - 32).into(), 1);
                }
            }
        }   
        index += 1;
    };

    abbreviation
}

fn char_checker(char: u8) -> bool {
    if (char<65 && char != 39) || (char > 90 && char < 96) || char > 122 {
        return false;
    } else {
        return true;
    }
}