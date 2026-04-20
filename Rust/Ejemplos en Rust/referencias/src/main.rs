fn main() {
    let mut v = 1;

    increment(&mut v);

    println!("The value of v is: {v}");
}

fn increment(p: &mut i32) {
    *p += 1;
}
