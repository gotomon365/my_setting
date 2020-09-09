// stack
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
typedef int stack_elem_t;

typedef struct stack_t{
  int size;
  int capacity;
  stack_elem_t *elems;
}stack_t;

// create stack
stack_t *stack_creat(const int capacity)
{
  stack_t *s = (stack_t *) malloc(sizeof(sizeof(stack_t)));
  s->size = -1;
  s->capacity = capacity;
  s->elems = (stack_elem_t *) malloc(capacity * sizeof(stack_elem_t));
  return s;
}



// destroy stack
void stack_destroy(stack_t *s)
{
  free(s->elems);
  free(s);
}

// is empty or not
// empty 1, or 0
int stack_empty(const stack_t *s)
{
  return (s->size) == -1;
}




// stack_size
int stack_size(const stack_t *s)
{
  return s->size;
}

// is full or not
int stack_full(const stack_t *s)
{
  return ((s->size) + 1) == (s->capacity);
}

// push
void stack_push(stack_t *s, stack_elem_t push_elem)
{
  if (stack_full(s)) {
    stack_elem_t * tmp =(stack_elem_t *) realloc(s->elems,s->capacity * 2 * sizeof(stack_elem_t));
    s->capacity *= 2;
    s->elems = tmp;
  }
  s->elems[s->size++] = push_elem;
}


stack_elem_t stack_pop(stack_t *s)
{
    return s->elems[s->size--];
}


// pop
void stack_pop_or_not(stack_t * s)
{
  if (stack_empty(s)) {
    printf("The stack is empty.\n");
    return;
  }
  else {
    stack_pop(s);
  }
}

