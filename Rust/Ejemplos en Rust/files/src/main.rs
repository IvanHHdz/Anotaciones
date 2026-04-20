use std::fs::File;
use std::io::prelude::*;

fn main() -> std::io::Result<()> {
    let name = String::from("hello.txt");

    reading_files(&name)?;

    overwrite_files(
        &name,
        "Pero que horas son, que fue lo que sucedio? Porque Farru tiene el carro parqueado la habitacion?\n".to_string(),
    )?;

    reading_files(&name)?;

    Ok(())
}

fn reading_files(name: &String) -> std::io::Result<()> {
    let mut file = File::open(name)?;

    let mut content = String::new();

    file.read_to_string(&mut content)?;

    println!("{content}");

    Ok(())
}

fn overwrite_files(name: &String, content: String) -> std::io::Result<()> {
    let mut file = File::create(name)?;

    file.write_all(content.as_bytes())?;

    Ok(())
}
