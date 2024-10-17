pub fn rows(count: u32) -> Array<Array<u32>> {
    // panic!("implement `rows`")
    let mut output:  Array<Array<u32>> = array![];

    if count == 0 {
        println!("{:?}", output);
    };

    for row in 1..(count+1) { 
        let mut row_array: Array<u32> = array![];

        let mut index = 1;
        loop {
            if index == row {
                row_array.append(1);
                break;
            };

            if index == 1 {
                row_array.append(1);
            } else {
                let value = output.at(row - 2);
                let left = *value.at(index - 1);
                let right = *value.at(index - 2);
                row_array.append((left + right));
            }
            index += 1;
        };
        output.append(row_array);
    };
    return output;
}