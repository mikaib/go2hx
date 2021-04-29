package main

import (
	"fmt"
	"reflect"
)

func main() {
	fmt.Println("start")

	// Code below highlights what works so far in the reflect prototype
	str := "hitchhiker"
	showType("42", 42, false, false)
	showType("uint8(42)", uint8(42), false, false)
	showType("str", str, false, false)
	showType("&str", &str, false, false)
	spt := reflect.PtrTo(reflect.TypeOf(str))
	fmt.Println(spt.String())
	showType("anonymous", struct {
		A         int32
		Interface string
		K         reflect.Kind
	}{42, str, 4}, true, false)

	m := MyType{
		X: 42,
		y: str,
	}
	showType("MyType", m, true, true)
	mt := reflect.TypeOf(m)
	showType("reflect.Type", mt, false, true)

	var k reflect.Kind = 5
	showType("reflect.Kind", k, false, true)

	showType("valueOf(str)", reflect.ValueOf(str), true, true)

	nst := NonStructT(42)
	showType("NonStructT", nst, false, false) // TODO methods can't be seen yet

	// TODO this code is not working at the moment
	// line below does not work in Go, it would neet to be generated by go2hx
	// var ms = makeNamedType("interface", "github_com.pxshadow.go4hx.rnd.MyStringer")
	// showType("MyStringer", ms, false, true)
	// fmt.Println("MyType implements MyStringer", mt.Implements(ms))                       // ...or not!                    // this is the key requirement for a type switch
	// fmt.Println("reflect.Type implements MyStringer", reflect.TypeOf(mt).Implements(ms)) // this is the key requirement for a type switch
	// fmt.Println("reflect.Kind implements MyStringer", reflect.TypeOf(k).Implements(ms))  // this is the key requirement for a type switch
	// end not working in Go section

	A := [2]uint64{0, 1}
	showType("array", A, false, false)

	S := []bool{true, false}
	showType("slice", S, false, false)

	Map := map[string]Vertex{
		"Bell Labs": {
			40.68433, -74.39967,
		},
		"Google": {
			37.42202, -122.08408,
		},
	}
	showType("map", Map, false, false)

	c := make(chan int8)
	showType("chan", c, false, false)

	showType("func", showType, false, false)

	var i42 uint32 = 42
	var pi42 *uint32 = &i42
	showType("*uint32", pi42, false, false)

	// this line does not work in Go either
	fmt.Println(declareType("interface{}").String())
}

func showType(name string, i interface{}, isStruct, isNamed bool) {
	Tv := reflect.ValueOf(i)
	Ti := Tv.Type()
	Ki := Ti.Kind()
	Kui := uint(Ki)
	Kn := Ki.String()

	fmt.Println(name, Ti.String(), Kui, Kn, Ti.Comparable())
	switch Ki { //kind
	case reflect.Bool:
		fmt.Println("Value.Bool()", Tv.Bool())
	case reflect.Int, reflect.Int8, reflect.Int16, reflect.Int32, reflect.Int64:
		fmt.Println("Value.Int()", Tv.Int())
	case reflect.Uint, reflect.Uint8, reflect.Uint16, reflect.Uint32, reflect.Uint64:
		fmt.Println("Value.Uint()", Tv.Uint())
	case reflect.String:
		fmt.Println("Value.String()", Tv.String())
	}
	if isStruct {
		fmt.Println("fields:")
		for i := 0; i < Ti.NumField(); i++ {
			fmt.Println("=", Ti.Field(i).Name, Ti.Field(i).Type.String())
		}
	}
	if isNamed {
		fmt.Println("methods:")
		for i := 0; i < Ti.NumMethod(); i++ {
			fmt.Println("-", Ti.Method(i).Name, Ti.Method(i).Type.String())
		}
	}
}

type Vertex struct {
	Lat, Long float64
}

type MyType struct {
	X         uint8
	y         string
	Interface uintptr
}

// MyType does not implement the MyStringer interface
func (mt MyType) StringX() string {
	return mt.y
}

type MyStringer interface {
	String() string
}

type NonStructT uint8

func (NonStructT) String() string {
	return "NonStructT-uint8"
}

//#go2hx stdgo.reflect.Reflect.makeNamedType
//func makeNamedType(interface_or_namedType, haxePathToFunction string) reflect.Type

//#go2hx stdgo.reflect.Reflect.declareType
func declareType(spec string) reflect.Type

//#go2hx stdgo.reflect.Reflect.testHarness
//func showInternals(v1 Vertex, v2 *Vertex)
