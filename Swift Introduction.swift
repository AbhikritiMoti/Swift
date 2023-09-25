/* Swift 2014, Chris Lattner
general purpose, 
multi-paradigm, 
compiled programming language */

// Swift follows Objective-C runtime library which allows C, Objective-C, C++ and Swift code to run within one program.
// Swift is built with open source LLVM compiler and included in Xcode since version 6.

// Open Source
// Fast and Powerful
// Interoperability


// single line comment

/* multi
line
comment*/


print("Hello, World!") 


// VARIABLES

// var num1 //error

var num2 = 10 

var num3:Int
num3 = 100

// var str : String = 'Abc Def'  //error '' use " "
var str : String = "Abc Def"
print(str)

str = "changed value"

print(str)

print(num3)

// Rules for naming Swift Variables

// start with letter, underscore _, or dollar sign $
// valid
var abc = "hello"
var _a = "hello"
// var $c = "hello"   //$ are typically used for system-generated or compiler-generated variables and symbols.

// cannot start with numbers
// var 1a = "hello" // throws error

// case-sensitive
var A = 5 
var a = 55
print(A) // 5
print(a) // 55

// Avoid using Swift keywords, generally written in camelCase (myVariable)
// associatedtype	class	deinit	enum	extension	fileprivate	func	import
// init	inout	internal	let	open	operator	private	precedencegroup
// protocol	public	rethrows	static	struct	subscript	typealias	var
// break	case	catch	continue	default	defer
// do	else	fallthrough	for	guard	if
// in	repeat	return	throw	switch	where	while
// Any	as	catch	false	is
// nil	rethrows	self	Self	super
// throw	throws	true	try
// associativity	convenience	didSet	dynamic	final	get	indirect	infix	lazy
// left	mutating	none	nonmutating	optional	override	postfix	precedence	prefix
// Protocol	required	right	set	some	Type	unowned	weak	willSet
// #available	#colorLiteral	#column	#dsohandle	#elseif	#else	#endif
// #error	#fileID	#fileLiteral	#filePath	#file	#function	#if
// #imageLiteral	#keyPath	#line	#selector	#sourceLocation	#warning


let x = 5   //Constants - value cannot be changed
// cannot declare a constant without initializing it
let siteName: String
// print(siteName)

siteName = "test"
print(siteName)

let pi: Int = 3
let piValue: Float = 3.14
let piValues: Double = 3.1477697012432

let pass: Bool = true  //false - default value.
let someCharacter: Character = "S"
let someString: String = "Swift is fun" 

var str1 = "Hello, world!"
var str2 = "I love Swift."
var str3 = "Hello, world!"

print(str1 == str2) //false
print(str1 == str3) //true  note - also check character case

str1.append(str2)
print(str1)

str1 = str1 + str2
str1 += str2
print(str1)

var op = str1 + str2
print(op)

print(op.count)
print(op.isEmpty) 
// print(op.capitalized)

// uppercased(op)

// String Interpolation
let name = "Swift"
print("This is \(name) programming")

//Multiline String  -  must always begin or end on a new line
var strr: String = """
Swift is awesome
I love Swift
"""             

var str9 = String() //String Instance - empty string
str9 = "abc"
print(str9)
str9 = "abc"

var num = Int() //Int Instance -  0
print(num)
num = 9
print(num)


//print()
//print(items: separator: terminator:)  separator and terminator are optional. default is " " and "\n"

print("Good Morning!", terminator: " fullstop \n")
print("New Year", 2022, "See you soon!", separator: ". ")
print("hey","there",  separator: "-",terminator:"! \n" )

print("hey there " + "what's up.", separator: "-",terminator:"! \n")


// TAKING INPUT
// let Name = readLine()
// print(Name)  //Optional("input")

let name2 = readLine() ?? "Default Input"
print(name2)

print(" I am " + "awesome.")


//check the datatype of a variable
let values = 42
print(type(of: values))


let value: Any = "Hello, Swift!"
if value is String {
    print("value is a String")
} else if value is Int {
    print("value is an Int")
} else {
    print("value has an unknown type")
}


//readline always read as string
print("Enter a string:")
if let input = readLine() {   
    print("You entered: \(input)")
    print(type(of: input))
} else {
    print("No input was provided.")
}

//accept only int
// Ask the user to input an integer
print("Please enter an integer:")

// Read the input as a String
if let input = readLine() {
    if let intValue = Int(input) {
        // Input was successfully converted to an Integer
        print("You entered: \(intValue)")
    } else {
        // Input couldn't be converted to an Integer
        print("Invalid input. Please enter a valid integer.")
    }
} else {
    // No input was provided
    print("No input received.")
}

// Swift Optionals
let anything = Int()
print(anything) //0 default value is a null value (nil)

//declaring an optional
var nn:Int?
var someAnotherNum:Int!

// print(nn) //nil
// print(someAnotherNum) //nil


//difference ? and !

let p:Int? = 5
print(p)  //Optional(5)
print(p!) //5  //unwrapping

let q:Int! = 5  //unwrapped optional, which automatically unwraps the value while you access it
print(q)

var r:Int!
var unwrappedValue:Int = r //Fatal error when accessing a null unwrapped optional



// Optional Handling
// if-else
var n1:Int?
var n2:Int! = 0
        
if n1 != nil {
	print("It has some value \(n1!)")
} else {
	print("doesn't contain value")
}
        
if n2 != nil {
	print("It has some value \(n2!)")
} else {
	print("doesn't contain value") 
}

//  Optional Binding (if-let)
var x1:Int?
var x2:Int! = 0
       
if let temp = x1 {
	print("It has some value \(temp)") 
} else {
	print("doesn't contain value")
}
        
if let temp = x2 {
	print("It has some value \(temp)")
} else {
	print("doesn't contain value")      
}

//Guard statement
func testFunction() {
	let y1:Int? = 5
	guard let temp = y1 else {
		return
	}
	print("It has some value \(temp)")
}

testFunction()

//Nil-coalescing operator
var nums:Int!
let defaultValues = 5
let unwrappedValues:Int = nums ?? defaultValues
print(unwrappedValues)
