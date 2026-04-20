fn main() {
    let alvin = Person {
        name: "Alvin".to_string(),
        profesion: "Batero".to_string(),
        age: 62,
    };

    let /*mut*/ albin = Person {
        name: String::new(),
        profesion: String::new(),
        age: 0,
    };

    presentacion(&alvin);

    // let size = size_of_val(&alvin) as i32;

    // do not uncomment
    // copiar(
    //     &alvin as *const Person as *const u8,
    //     &mut albin as *mut Person as *mut u8,
    //     size,
    // );

    presentacion(&alvin);

    println!("here");

    presentacion(&albin);

    println!("not here");
}

struct Person {
    name: String,
    profesion: String,
    age: i32,
}

fn presentacion(p: &Person) {
    println!(
        "Name: {}\nProfesion: {}\nAge: {}\nSize of {} bytes.",
        p.name,
        p.profesion,
        p.age,
        size_of_val(p)
    );
    show_bytes(p, size_of_val(p) as i32);
}

fn show_bytes(ptr: &Person, len: i32) {
    let p = ptr as *const Person as *const u8;
    unsafe {
        for i in 0..len {
            print!("{:02x} ", *p.add(i as usize));
        }
    }
}

#[allow(unused)]
fn copiar(p1: *const u8, p2: *mut u8, len: i32) {
    unsafe {
        for i in 0..len {
            *p2.add(i as usize) = *p1.add(i as usize);
        }
    }
}

#[allow(dead_code)]
fn operations() {
    let arr = [7, 17, 23, 43, 41, 73, 92, 101];

    let ptr = arr.as_ptr();

    // equivalence
    unsafe {
        let p = *ptr;
        prin(p);
    }

    // addition
    unsafe {
        let p = *ptr.add(2);
        prin(p);
    }

    // substraction
    unsafe {
        let mut p = ptr;
        p = p.add(3);
        prin(*p.sub(2));
    }
}

fn prin(value: i32) {
    println!("The value is: {}", value);
}
