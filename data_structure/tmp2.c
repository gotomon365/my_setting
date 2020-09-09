#include <stdio.h>
#include <stdlib.h>

struct node{
  int data;
  struct node *next;
};

typedef struct node Node;

Node *createList(int *, int);
void printList(Node *);
void freeList(Node*);
Node *searchNode(Node *, int);
void *insertNode(Node *, Node *, int);

int main(int argc, char *argv[])
{
  Node *first = NULL, *node = NULL;
  int arr[] = {14, 27, 32, 46};
  first = createList(arr, 4);
  printList(first);
  //  freeList(first);

  node = searchNode(first, 27);
  if (node) {
    printf("find it, insert behind %d\n", node->data);
    insertNode(first, node, 100);
  } else {
    printf("Not find node, insert at last\n");
    insertNode(first, node, 100); 
  }
  printList(first);

  freeList(first);
  return 0;
}


Node *createList(int *arr, int len)
{
  int i;
  Node *first = NULL, *current = NULL, *pre = NULL;

  for (i = 0; i < len; ++i) {
    current = (Node *) malloc(sizeof(Node));
    current->data = arr[i];
    if (i == 0) {
      first = current;
    } else {
      pre->next = current;
    }
    current->next = NULL;
    pre = current;
  }

  return first;
}

void printList(Node *first)
{
  Node *current = NULL;
  current = first;
  if (!current) {
    
  } else {
    while (current) {
      printf("%d ", current->data);
      current = current->next;
    }
    printf("\n");
  }
}

void freeList(Node *first)
{
  Node *current = NULL, *tmp;
  current = first;
  while (current) {
    tmp = current;
    current = current->next;
    free(tmp);
  }
}

Node *searchNode(Node *first, int item)
{
  Node *node = first;
  while (node) {
    if (node->data == item) {
      return node;
    } else {
      node = node->next;
    }
  }
  return NULL;
}

void *insertNode(Node *first, Node *node, int item)
{
  Node *newnode = NULL, *last = NULL;
  newnode = (Node *)malloc(sizeof(Node));
  newnode->data = item;
  if (node) {
      newnode->next = node->next;
      node->next = newnode;
  } else {
    Node *current = first;
    while (current) {
      last = current;
      current = current->next;

    }
    last->next = newnode;
  }
}
