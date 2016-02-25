package main

import (
	"C"
	"github.com/hSATAC/go-zxing-qrencoder/qrencode"
	"image/png"
	"os"
)

func main() {

}

//export generateQRCodeImage
func generateQRCodeImage(rawValue *C.char, rawPath *C.char, rawECLevel int, gridSize int) {
	str := C.GoString(rawValue)
	path := C.GoString(rawPath)
	ecLevel := qrencode.ECLevel(rawECLevel)
	//ecLevel := qrencode.ECLevelQ
	//gridSize := 5

	grid, err := qrencode.Encode(str, ecLevel)
	if err != nil {
		return
	}
	f, err := os.Create(path)
	if err != nil {
		return
	}
	defer f.Close()
	png.Encode(f, grid.Image(gridSize))
}
