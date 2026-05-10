/// # Safety
/// Just to see the bytes of a variable
pub unsafe fn show_bytes(ptr: *const u8, len: u8) {
    unsafe {
        for i in 0..len {
            print!("{:02x} ", *ptr.add(i as usize));
        }
    }
    println!();
}
