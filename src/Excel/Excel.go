package main

import (
	"github.com/webview/webview"
)

func main() {
	debug := true
	w := webview.New(debug)
	defer w.Destroy()
	w.SetTitle("Excel")
	w.SetSize(800, 600, webview.HintNone)
	w.Navigate("https://www.office.com/launch/excel")
	w.Run()
}