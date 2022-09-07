package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", hello)
	log.Fatal(http.ListenAndServe(":1234", nil))
}

func hello(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "Hello GO")
}
