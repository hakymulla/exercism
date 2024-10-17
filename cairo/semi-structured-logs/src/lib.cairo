/// various log levels
#[derive(Drop)]
pub enum LogLevel {
    Info,
    Warning,
    Error,
    Debug
}

/// primary function for emitting logs
pub fn log(level: LogLevel, message: ByteArray) -> ByteArray {
    // return a message for the given log level
    // panic!("implement `log`")
    let level: ByteArray = match level {
        LogLevel::Info => "INFO",
        LogLevel::Warning => "WARNING",
        LogLevel::Error => "ERROR",
        LogLevel::Debug => "DEBUG",
    };
    return  format!("[{}]: {}", level, message);
}

pub fn info(message: ByteArray) -> ByteArray {
    // return a message for info log level
    // panic!("implement `info`")
    return  format!("[INFO]: {}", message);
}

pub fn warn(message: ByteArray) -> ByteArray {
    // return a message for warn log level
    // panic!("implement `warn`")
    return  format!("[WARNING]: {}", message);
}

pub fn error(message: ByteArray) -> ByteArray {
    // return a message for error log level
    // panic!("implement `error`")
    return  format!("[ERROR]: {}", message);

}
