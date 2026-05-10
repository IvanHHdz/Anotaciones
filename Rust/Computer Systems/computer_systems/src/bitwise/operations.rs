pub fn bitwise_not(p: u32) {
    println!("~{:02x} = {:02x}", p, !p);
}

pub fn bitwise_and(p: u32, q: u32) {
    println!("{:02x} & {:02x} = {:02x}", p, q, p & q);
}

pub fn bitwise_or(p: u32, q: u32) {
    println!("{:02x} | {:02x} = {:02x}", p, q, p | q);
}

pub fn bitwise_xor(p: u32, q: u32) {
    println!("{:02x} ^ {:02x} = {:02x}", p, q, p ^ q);
}
