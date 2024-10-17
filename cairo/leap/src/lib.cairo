pub fn is_leap_year(year: u64) -> bool {
    // panic!("implement `is_leap_year`")
    if (year % 100) == 0 {
        return (year % 400) == 0;
    } else {
        return (year % 4) == 0;
    }
}
