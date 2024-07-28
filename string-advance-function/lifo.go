package main

import "fmt"

type Stack struct {
	items map[interface{}]struct{}
	order []interface{}
}

func main() {
	stack := NewStack()

	stack.Push(1)
	stack.Push(2)
	stack.Push(3)
	stack.Push(2)

	fmt.Println("Stack values:", stack.Values())

	item, ok := stack.Pop()
	if ok {
		fmt.Println("Popped item:", item)
	}
	fmt.Println("Stack values after pop:", stack.Values())
	fmt.Println("Is stack empty?", stack.isEmpty())
	stack.Pop()
	stack.Pop()
	fmt.Println("Is stack empty now?", stack.isEmpty())

}

func NewStack() *Stack {
	return &Stack{
		items: make(map[interface{}]struct{}),
		order: make([]interface{}, 0),
	}
}

func (s *Stack) Push(item interface{}) {
	if _, exists := s.items[item]; !exists {
		s.items[item] = struct{}{}
		s.order = append(s.order, item)

	}

}

func (s *Stack) Pop() (interface{}, bool) {
	if len(s.order) == 0 {
		return nil, false
	}
	lastIndex := len(s.order) - 1
	item := s.order[lastIndex]

	s.order = s.order[:lastIndex]
	delete(s.items, item)
	return item, true
}

func (s *Stack) isEmpty() bool {
	return len(s.order) == 0
}

func (s *Stack) Values() []interface{} {
	return s.order
}
