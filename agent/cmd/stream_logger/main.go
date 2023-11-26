package main

import (
	"fmt"
	"io"
	"log"
	"net"
	"os"
)

func main() {
	fmt.Println("Agent app successfully run")
	conn, _ := net.Dial("tcp", "127.0.0.1:8080")
	go copyTo(os.Stdout, conn)
	copyTo(conn, os.Stdin)
}

func copyTo(dst io.Writer, src io.Reader) {
	if _, err := io.Copy(dst, src); err != nil {
		log.Fatal(err)
	}
}
