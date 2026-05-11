/// # Safety
/// just be sure the lenght of the array is greater or equal to the parameter len
pub unsafe fn printarr(arr: *const i32, len: usize) {
    print!("[");
    for i in 0..len {
        unsafe { print!(" {},", *arr.add(i)) }
    }
    println!(" ]");
}

#[allow(clippy::manual_swap)]
fn swapper(x: &mut i32, y: &mut i32) {
    *y ^= *x;
    *x ^= *y;
    *y ^= *x;
}

pub fn reverse_array<const N: usize>(arr: &mut [i32; N]) {
    let mid = N / 2;
    let (left, right) = arr.split_at_mut(mid);
    for i in 0..mid {
        swapper(&mut left[i], &mut right[mid - i]);
    }
}
