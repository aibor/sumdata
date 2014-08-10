#include <stdio.h>

#define LENGTH 200

int main(int argc, char* argv[])
{
  FILE *f;
  char line[LENGTH];
  char dummy[LENGTH];
  long original = 0,
      compressed = 0,
      sum_original = 0,
      sum_compressed = 0;

  f = fopen(argv[1], "r");

  while(fgets(line, LENGTH, f) != NULL)
  {
    sscanf(line, "%s %s %s %s %d %d %s %s", dummy, dummy, dummy, dummy,
        &original, &compressed, dummy, dummy);

    sum_original += original;
    sum_compressed += compressed;
  }
  fclose(f);

  printf("Original size %d kb\n", sum_original/1000);
  printf("Compressed size %d kb\n", sum_compressed/1000);

  return 0;
}

