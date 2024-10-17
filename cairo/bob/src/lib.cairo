pub fn response(input: @ByteArray) -> ByteArray {
    let mut question: usize = 0;
    let mut caps: usize = 0;
    let mut whitespace: usize = 0;
    let mut non_caps: usize = 0;
    let mut last_real = 0;

    let string_len = input.len();
    let  mut index = 0;
    loop {
        if (index == string_len) {
            break;
        }

        let current = input.at(index).unwrap();

        if (current == 63) {
            last_real = current;
            question +=1;
        }

        if (current >=65 && current <=90) {
            last_real = current;
            caps +=1;
        }

        if (current >=0 && current <=32) {
            whitespace +=1;
        }

        if (current >=97 && current <=122) {
            last_real = current;
            non_caps +=1;
        }

        index += 1;
    };

    if (last_real == 63 && caps > non_caps) {
        let response: ByteArray = "Calm down, I know what I'm doing!";
        return response;
    } else if (last_real == 63) {
        let response: ByteArray = "Sure.";
        return response;
    } else if (caps > non_caps) {
        let response: ByteArray = "Whoa, chill out!";
        return response;
    } else if (string_len == 0 || whitespace == string_len) {
        let response: ByteArray = "Fine. Be that way!";
        return response;
    } else {
        let response: ByteArray = "Whatever.";
        return response;
    }
}