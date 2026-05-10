pub mod bitwise;
pub mod information_representation;

use bitwise::operations::{bitwise_and, bitwise_not, bitwise_or, bitwise_xor};
use information_representation::show_bytes;

fn main() {
    // use one of the functions to see the execution of the equivalent of the C code in Rust
}

#[allow(dead_code)]
fn show_information_representation() {
    let v1 = 23;
    unsafe {
        show_bytes(&v1 as *const i32 as *const u8, 4);
    }

    let v2 = 1.618033989;
    unsafe {
        show_bytes(&v2 as *const f64 as *const u8, 8);
    }
}

#[allow(dead_code)]
fn show_bitwise_operations() {
    let a = 0x4E;
    let b = 0xE1;

    bitwise_not(a);
    bitwise_not(b);

    bitwise_and(a, b);

    bitwise_or(a, b);

    bitwise_xor(a, b);
}
