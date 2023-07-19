// File: ChildrenLearn.ts

// Section 1: Introduction

// This file outlines a basic curriculum for teaching children to code with TypeScript.

class Child {
    name: string;
    age: number;

    constructor(name: string, age: number) {
        this.name = name;
        this.age = age;
    }

    greet(): string {
        return "Hello, my name is " + this.name + " and I'm " + this.age + " years old.";
    }
}

// Section 2: Variables

// The first step in teaching a child to code is to introduce them to variables.

let firstName: string = "John";
let lastName: string = "Smith";
let age: number = 5;
let fullName: string = firstName + " " + lastName;

// Section 3: Conditionals

// The next step in teaching a child to code is to introduce conditionals.

if (age >= 18) {
    console.log("You can vote!");
} else {
    console.log("You cannot vote.");
}

// Section 4: Loops

// The next step in teaching a child to code is to introduce loops.

for (let i = 0; i < 10; i++) {
    console.log("This is iteration number " + i);
}

// Section 5: Functions

// The next step in teaching a child to code is to introduce functions.

function add(x: number, y: number): number {
    return x + y;
}

// Section 6: Classes

// The next step in teaching a child to code is to introduce classes.

let child = new Child("Jane", 10);
console.log(child.greet());

// Section 7: Interfaces

// The next step in teaching a child to code is to introduce interfaces.

interface Shape {
    width: number;
    height: number;
}

function getArea(shape: Shape): number {
    return shape.width * shape.height;
}

// Section 8: Modules

// The next step in teaching a child to code is to introduce modules.

import { Point } from "./point";

let point = new Point(2, 3);
console.log(point.getDistance());

// Section 9: Type Inference

// The next step in teaching a child to code is to introduce type inference.

let x = 10; // x is of type number
let y = "Hello"; // y is of type string
let z = { name: "John" }; // z is of type object

// Section 10: Further Resources

// Once the basics of TypeScript have been covered, further resources can be used for a more in-depth look into the language. 
// These include tutorials, online courses, and other resources.