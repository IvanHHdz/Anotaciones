#include "stdio.h"

void reading_files(char name[]) {
  FILE *f = fopen(name, "r");

  int c;

  while ((c = fgetc(f)) != EOF) {
    printf("%c", c);
  }
  fclose(f);
}

void overwrite_files(char name[], char content[]) {
  FILE *f = fopen(name, "w");

  int c;

  fputs(content, f);

  fclose(f);
}

int main(void) {
  char name[] = "hello.txt";

  reading_files(name);

  overwrite_files(name,
                  "Siempre que falte, amor mio, un amante o un amigo...\n");

  reading_files(name);

  return 0;
}
