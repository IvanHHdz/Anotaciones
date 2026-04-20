#include <stdio.h>

struct car {
  char *name;
  float price;
  char *color;
};

void mostrar(struct car *car);

void cambiar_precio(struct car *car, float new_price);

int main(void) {
  struct car my_car = {"Ford Scape", 10000.00, "Gray"};

  mostrar(&my_car);

  cambiar_precio(&my_car, 100000.50);

  mostrar(&my_car);

  return 0;
}

void mostrar(struct car *car) {
  printf("This car is called %s, is color %s, and its price is $%f.\n",
         car->name, car->color, car->price);
}

void cambiar_precio(struct car *car, float new_price) {
  car->price = new_price;
}
