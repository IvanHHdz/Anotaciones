fn main() {
    let mut my_car = Car {
        name: "Ford Scape".to_string(),
        color: "Gray".to_string(),
        price: 10_000.00,
    };

    mostrar(&my_car);

    cambiar_precio(&mut my_car, 100_000.50);

    mostrar(&my_car);
}

struct Car {
    name: String,
    color: String,
    price: f64,
}

fn mostrar(car: &Car) {
    println!(
        "This car is called {}, is color {}, and its price is ${}.",
        car.name, car.color, car.price
    );
}

fn cambiar_precio(car: &mut Car, price: f64) {
    car.price = price;
}
