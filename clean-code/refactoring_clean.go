package main

import "fmt"

// IntSet is a set of integers that using a map
type IntSet struct {
	elements map[int]struct{}
}

// now creating a new instance of IntSet
func NewIntSet() *IntSet {
	return &IntSet{
		elements: make(map[int]struct{}),
	}
}

// inserting an integer and if the integer is present. does not have effect.
func (s *IntSet) Add(value int) {
	s.elements[value] = struct{}{}
}

// deleting an integer adn if teh integer is not present. does not have effect.
func (s *IntSet) Remove(value int) {
	delete(s.elements, value)
}

// now returning all integers as a slice.
func (s *IntSet) Get() []int {
	var result []int
	for value := range s.elements {
		result = append(result, value)
	}
	return result
}

// calling all functioins like: adding, removing, and retrieving elements to the set.
func main() {
	set := NewIntSet()

	set.Add(1)
	set.Add(2)
	set.Add(1)
	set.Add(3)
	set.Add(4)
	set.Add(5)

	set.Remove(100)

	fmt.Println(set.Get())
}
