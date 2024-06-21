package main

import (
	"fmt"
	"os"
)

var todos []string

func add_todo(todo string) {
	todos = append(todos, todo)
}

func remove_todo(todo string) {
	index := -1
	for i, v := range todos {
		if v == todo {
			index = i
			break
		}
	}
	if index != -1 {
		todos = append(todos[:index], todos[index+1:]...)
	}
}

func display_todos() {
	for i, todo := range todos {
		fmt.Printf("%d: %s\n", i+1, todo)
	}
}

func main() {
	var arg []string = os.Args

	add_todo("Write-code")
	add_todo("Test application")
	if arg[1] == "add" {
		add_todo(arg[2])
	}

	if arg[1] == "rm" {
		remove_todo(arg[2])
	}

	fmt.Println("Todos:")
	display_todos()

	remove_todo("Write code")

	fmt.Println("Updated Todos:")
	display_todos()
}
