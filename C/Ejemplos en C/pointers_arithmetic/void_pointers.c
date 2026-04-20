#include "stdio.h"

typedef struct {
  char *name;
  char *profesion;
  int age;
} person;

void show_bytes(void *p, int l) {
  unsigned char *q = p;
  for (; l > 0; l--, p++) {
    q = p;
    printf("%02x ", *q);
  }
  putchar('\n');
}

void presentacion(person p) {
  printf("Name: %s\nProfesion: %s\nAge: %d\nSize of %zu bytes.\n", p.name,
         p.profesion, p.age, sizeof(p));

  show_bytes(&p, sizeof(p));
}

void copiar(void *p1, void *p2, int len) {
  char *c1 = p1;
  char *c2 = p2;
  for (int i = 0; i < len; i++) {
    *(c2 + i) = *(c1 + i);
  }
}

int main(void) {
  person alvin = {.name = "Alvin", .profesion = "Batero", .age = 62};

  presentacion(alvin);

  person albin;

  copiar(&alvin, &albin, sizeof(alvin));

  presentacion(albin);

  return 0;
}
