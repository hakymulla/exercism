pub fn reverse(string: ByteArray) -> ByteArray {
    let mut bytes: ByteArray = Default::default();
    let string_len = string.len();

    let mut index = 0;
    loop {
        if (index == string_len) {
            break;
        }

        let current = string.at(string_len - (index + 1)).unwrap();
        index += 1;
        bytes.append_word(current.into(), 1);
    };

    // let mut bytes = string.rev();

    
    return bytes;
}