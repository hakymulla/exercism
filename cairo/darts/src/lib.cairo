pub fn score(x: i64, y: i64) -> u8 {
    // panic!("implement `score`")
    let OUTER_CIRCLE: i64 = 100;
    let MIDDLE_CIRCLE: i64 = 25;
    let INNER_CIRCLE: i64 = 1;

    let position = x*x + y*y;
    if (position <= INNER_CIRCLE){
        return 10_u8;
    } else if (position <= MIDDLE_CIRCLE) {
        return 5_u8;
    } else if (position <= OUTER_CIRCLE) {
        return 1_u8;
    } else {
        return 0_u8;
    }
}