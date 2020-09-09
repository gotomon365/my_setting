#include <stdio.h>
#include <stdlib.h>
struct node
{
  int data;
  struct node *next;
};

typedef struct node Node;

int main(int argc, char *argv[])
{
  int i, num;
  Node *first, *current, *previous;
  printf("Number of nodes: ");
  scanf(" %d", &num);
  printf("size of node = %d\n", sizeof(Node));
  for (i = 0; i < num; ++i) {
    current =(Node *) malloc(sizeof(Node));
    printf("Data for node %d: ", i+1);
    scanf(" %d", &(current->data));

    if (i == 0) {
      first = current;
    } else {
      previous->next = current;
    }
    current->next = NULL;
    previous = current;
  }

  current = first;

  while (current != NULL) {
    printf("address = %p, ", current);
    printf("data = %d \n", current->data);
    printf("next = %p\n", current->next);
    current = current->next;
  }
  return 0;
}

