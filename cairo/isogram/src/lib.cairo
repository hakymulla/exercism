pub fn is_isogram(phrase: ByteArray) -> bool {
    let mut isogram_found = true;
    let string_len = phrase.len();
    let mut index = 0;

    while isogram_found {  
        if index == string_len {
            println!("no isogram");
            break;
        }
        let current = switch_char(phrase.at(index).unwrap());
        index += 1;

        let mut inner_index = index;
        loop {
            if inner_index == string_len {
                break;
            }
            let next = switch_char(phrase.at(inner_index).unwrap());

                if (current == next) && (current != 32) && (current != 45) {
                    println!("found isogram");
                    isogram_found = false;
                    break;
                }
            inner_index += 1;
        };
   };

   return isogram_found;
}

fn switch_char(chr: u8) -> u8 {
    let mut output = chr;
    if chr >= 'A' && chr <= 'Z' {
        output = chr + 32;
    }
    return output;
}