// Creating a structure with three string fields
struct Child {
    name: String,
    age: String,
    learning: String
}

// Creating a vector to store Child objects
let mut children: Vec<Child> = Vec::new();

// Adding Child objects to the vector
children.push(Child {
    name: String::from("Lily"),
    age: String::from("2"),
    learning: String::from("Colors and Shapes")
});
children.push(Child {
    name: String::from("Ben"),
    age: String::from("3"),
    learning: String::from("Alphabet and Numbers")
});
children.push(Child {
    name: String::from("Sarah"),
    age: String::from("4"),
    learning: String::from("Writing and Reading")
});
children.push(Child {
    name: String::from("Emily"),
    age: String::from("5"),
    learning: String::from("Arithmetic and Geometry")
});

// Creating a function to print out each Child's info
fn show_children_info(children: &Vec<Child>) {
    for child in children {
        println!("Name: {}, Age: {}, Learning: {}", child.name, child.age, child.learning);
    }
}

// Creating a function to teach the children
fn teach_children(children: &mut Vec<Child>) {
    for child in children {
        if child.age == "2" {
            child.learning = String::from("Colors, Shapes and Counting");
        } else if child.age == "3" {
            child.learning = String::from("Alphabet, Numbers and Writing");
        } else if child.age == "4" {
            child.learning = String::from("Reading, Writing and Problem Solving");
        } else if child.age == "5" {
            child.learning = String::from("Cursive Writing, Arithmetic and Geometry");
        }
    }
}

fn main() {
    // Showing before teaching the children
    println!("Children before teaching:");
    show_children_info(&children);
    println!();

    // Teaching the children
    teach_children(&mut children);

    // Showing after teaching the children
    println!("Children after teaching:");
    show_children_info(&children);
}