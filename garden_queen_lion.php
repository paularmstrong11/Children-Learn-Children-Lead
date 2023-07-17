<?php

//This is the first 2000 lines of code for the Children Learn project.

//Function 1: Get age of student
function getAge($age)
{
    //variables to store age and age group
    $studentAge;
    $ageGroup;
    
    //check which age group the student belongs to
    if($age <= 5){
        $ageGroup = "Pre-K";
    }
    elseif($age >= 6 && $age <= 10){
        $ageGroup = "Elementary";
    }
    elseif($age >= 11 && $age <= 15){
        $ageGroup = "Middle School";
    }
    elseif($age >= 16 && $age <= 18){
        $ageGroup = "High School";
    }
    elseif($age >= 19){
        $ageGroup = "Adult";
    }
    
    //set and return age and age group
    $studentAge = array(
        'age' => $age,
        'ageGroup' => $ageGroup
    );
    return $studentAge;
}

//Function 2: Generate a lesson plan
function generateLessonPlan($ageGroup)
{
    //variables to store lesson plan
    $lessonPlan = array();
    
    //create the lesson plan based on the age group
    if($ageGroup == "Pre-K"){
        $lessonPlan = array(
            'lesson1' => 'Alphabet',
            'lesson2' => 'Colors',
            'lesson3' => 'Numbers',
            'lesson4' => 'Shapes'
        );
    }
    elseif($ageGroup == "Elementary"){
        $lessonPlan = array(
            'lesson1' => 'Writing',
            'lesson2' => 'Math',
            'lesson3' => 'Reading',
            'lesson4' => 'Science'
        );
    }
    elseif($ageGroup == "Middle School"){
        $lessonPlan = array(
            'lesson1' => 'Algebra',
            'lesson2' => 'Grammar',
            'lesson3' => 'Geometry',
            'lesson4' => 'History'
        );
    }
    elseif($ageGroup == "High School"){
        $lessonPlan = array(
            'lesson1' => 'Biology',
            'lesson2' => 'Physics',
            'lesson3' => 'Calculus',
            'lesson4' => 'Literature'
        );
    }
    elseif($ageGroup == "Adult"){
        $lessonPlan = array(
            'lesson1' => 'Computer Science',
            'lesson2' => 'Economics',
            'lesson3' => 'Business',
            'lesson4' => 'Civics'
        );
    }
    
    //return the generated lesson plan
    return $lessonPlan;
}

//Function 3: Get resources for lesson
function getResources($lesson)
{
    //variables to store resources
    $resources = array();
    
    //get resources for the lesson
    if($lesson == "Alphabet"){
        $resources = array(
            'resource1' => 'Alphabet Flashcards',
            'resource2' => 'ABC Song',
            'resource3' => 'Alphabet Puzzle'
        );
    }
    elseif($lesson == "Colors"){
        $resources = array(
            'resource1' => 'Color Flashcards',
            'resource2' => 'Colors Song',
            'resource3' => 'Color Memory Game'
        );
    }
    elseif($lesson == "Numbers"){
        $resources = array(
            'resource1' => 'Number Flashcards',
            'resource2' => 'Counting Song',
            'resource3' => 'Number Matching Game'
        );
    }
    elseif($lesson == "Shapes"){
        $resources = array(
            'resource1' => 'Shape Flashcards',
            'resource2' => 'Shape Song',
            'resource3' => 'Shape Puzzle'
        );
    }
    elseif($lesson == "Writing"){
        $resources = array(
            'resource1' => 'Writing Worksheets',
            'resource2' => 'Writing Exercises',
            'resource3' => 'Writing Prompts'
        );
    }
    elseif($lesson == "Math"){
        $resources = array(
            'resource1' => 'Math Worksheets',
            'resource2' => 'Math Exercises',
            'resource3' => 'Math Games'
        );
    }
    elseif($lesson == "Reading"){
        $resources = array(
            'resource1' => 'Reading Worksheets',
            'resource2' => 'Reading Exercises',
            'resource3' => 'Reading Books'
        );
    }
    elseif($lesson == "Science"){
        $resources = array(
            'resource1' => 'Science Worksheets',
            'resource2' => 'Science Experiments',
            'resource3' => 'Science Videos'
        );
    }
    elseif($lesson == "Algebra"){
        $resources = array(
            'resource1' => 'Algebra Worksheets',
            'resource2' => 'Algebra Problems',
            'resource3' => 'Algebra Videos'
        );
    }
    elseif($lesson == "Grammar"){
        $resources = array(
            'resource1' => 'Grammar Worksheets',
            'resource2' => 'Grammar Exercises',
            'resource3' => 'Grammar Games'
        );
    }
    elseif($lesson == "Geometry"){
        $resources = array(
            'resource1' => 'Geometry Worksheets',
            'resource2' => 'Geometry Problems',
            'resource3' => 'Geometry Videos'
        );
    }
    elseif($lesson == "History"){
        $resources = array(
            'resource1' => 'History Worksheets',
            'resource2' => 'History Videos',
            'resource3' => 'History Books'
        );
    }
    elseif($lesson == "Biology"){
        $resources = array(
            'resource1' => 'Biology Worksheets',
            'resource2' => 'Biology Experiments',
            'resource3' => 'Biology Videos'
        );
    }
    elseif($lesson == "Physics"){
        $resources = array(
            'resource1' => 'Physics Worksheets',
            'resource2' => 'Physics Problems',
            'resource3' => 'Physics Videos'
        );
    }
    elseif($lesson == "Calculus"){
        $resources = array(
            'resource1' => 'Calculus Worksheets',
            'resource2' => 'Calculus Problems',
            'resource3' => 'Calculus Videos'
        );
    }
    elseif($lesson == "Literature"){
        $resources = array(
            'resource1' => 'Literature Worksheets',
            'resource2' => 'Literature Exercises',
            'resource3' => 'Literature Books'
        );
    }
    elseif($lesson == "Computer Science"){
        $resources = array(
            'resource1' => 'Computer Science Worksheets',
            'resource2' => 'Computer Science Problems',
            'resource3' => 'Computer Science Videos'
        );
    }
    elseif($lesson == "Economics"){
        $resources = array(
            'resource1' => 'Economics Worksheets',
            'resource2' => 'Economics Problems',
            'resource3' => 'Economics Videos'
        );
    }
    elseif($lesson == "Business"){
        $resources = array(
            'resource1' => 'Business Worksheets',
            'resource2' => 'Business Exercises',
            'resource3' => 'Business Books'
        );
    }
    elseif($lesson == "Civics"){
        $resources = array(
            'resource1' => 'Civics Worksheets',
            'resource2' => 'Civics Exercises',
            'resource3' => 'Civics Videos'
        );
    }
    
    //return the generated resources
    return $resources;
}

//Function 4: Assign a grade
function assignGrade($score)
{
    //variables to store grade
    $grade;
    
    //assign grade based on score
    if($score >= 90){
        $grade = 'A';
    }
    elseif($score >= 80 && $score < 90){
        $grade = 'B';
    }
    elseif($score >= 70 && $score < 80){
        $grade = 'C';
    }
    elseif($score >= 60 && $score < 70){
        $grade = 'D';
    }
    elseif($score < 60){
        $grade = 'F';
    }
    
    //return grade
    return $grade;
}

//Function 5: Calculate average grade
function calculateAverageGrade($grades)
{
    //variables to store sum and avg
    $sum = 0;
    $average;
    
    //calculate the sum of all grades
    foreach($grades as $grade){
        $sum += $grade;
    }
    
    //calculate the average grade
    $average = $sum/count($grades);
    
    //return average grade
    return $average;
}

?>