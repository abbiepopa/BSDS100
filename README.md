# BSDS 100: Intro to Data Science with R

## Abbie M. Popa

**Email**: apopa@usfca.edu

**Class Time**: TR, 2:40 - 4:25 PM in Harney 430

**Office Hours**: TR, 1:20 - 2:20 PM in Harney 107B (James Wilson's Office)

**Book**: [R for Data Science](http://r4ds.had.co.nz/index.html) by Hadley Wickham and Garret Grolemund

**Syllabus**: [Link](https://github.com/abbiepopa/BSDS100/blob/master/Syllabus/Fall_2018.pdf)

## Course Learning Outcomes

By the end of this course, you will be able to

- Proficiently wrangle, manipulate, and explore data using the R programming language
- Use contemporary R libraries including *ggplot2*, *tibble*, *tidyr*, *dplyr*, *knitr*, and *stringr*
- Visualize, present, and communicate trends in a variety of data types
- Communicate results using R markdown and R Shiny
- Formulate data-driven hypotheses using exploratory data analysis and introductory model building techniques

## Course Overview

### Assessment

The focus of this course will be to provide you with the basic techniques available for making informed, data-driven decisions using the R programming language. This is *not* a statistics course, but will provide you the intuition to make hypotheses about complex questions through visualization, wrangling, manipulation, and exploration of data. The course will be graded based on the following components:

- **Attendence** (20%): Attendance will be recorded and you will lose points for every class you miss.
- **Assignments** (40%): You will be assigned a computational assignment to be completed using RStudio and the package *knitr* regularly throughout class. 
- **Case Studies** (20%): You will be assigned applied case studies throughout the class that are to be completed using RStudio.
- **Final Project** (20%): The final project will be a computational case study that brings together the techniques learned throughout the semester. The description for this project will be provided towards the mid point of the semester.

<!---
### Data Science Links and News

- **Undergraduate Research in Statistics and Data Science**: [Article from Amstat News](http://magazine.amstat.org/blog/2017/09/01/undergraduateexpectations/)
--->

### Schedule

I will do my best to keep this schedule accurate and up to date. However, I reserve the right to change it as I deem necessary. Usually this will be due to the amount of material we are able to cover in class.

If you wish to view the notes I use during lecture you can see them [here](https://github.com/abbiepopa/BSDS100/tree/master/lecture_notes_preclass), though note I often change these based on class questions.

**Introduction**

| Topic | Reading | Assignment | Due Date | In Class Code |
 | :---  | :---:  | :---:  | :---:  | :---: |
 | [Introduction - History of Data Science](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%201%20Introduction.pdf) | [Ch. 1 What is Data Science?](https://www.safaribooksonline.com/library/view/doing-data-science/9781449363871/ch01.html)| [HW 1](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Assignment1.pdf) | Thursday, 8/23| [Installing R, RStudio, and LaTeX](https://github.com/abbiepopa/BSDS100/blob/master/class_code/R_Installation.pdf)|
 | [R and RStudio](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%202%20R%20and%20RStudio.pdf)| | [HW 2](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Assignment2.pdf) | Tuesday, 8/28| [In Class Code 2018-08-23](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture2_livecode.R) |
 | [R Packages and RMarkdown](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%203%20R%20Markdown.pdf) | | [HW 3](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Assignment3.pdf) | Tuesday, 9/4 | [In Class Activity](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture3_live_knit.pdf) <br> [In Class Activity Solution: Rmd Code](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture3_live_knit_solutions.Rmd) <br> [In Class Activity Solution: PDF Output](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture3_live_knit_solutions.pdf) <br> [Class Code - Packages](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_examples_packages.R) <br> [Class Code - R File to PDF](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_example_R_to_pdf.R) <br> [Class Output - R File to PDF](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_example_R_to_pdf.pdf) <br> [Class Code - Rmd File to PDF](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_example_Rmd_to_pdf.Rmd) <br> [Class Output - Rmd File to PDF](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_example_Rmd_to_pdf.pdf) <br> [Class Activity 2](https://github.com/abbiepopa/BSDS100/blob/master/class_code/More_Practice_Knitting.pdf)|

  
  
 **Data Structures in R**
  
 | Topic | Reading | Assignment | Due Date | In Class Code |
  | :---  | :---:  | :---:  | :---:  | :---: |
  | [Vectors, Matrices, and Arrays](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%204%20Data%20Structures%20I.pdf) | | [HW 4](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Assignment4.pdf)| Tuesday, 9/11 | [Class Code Aug 30, 2018](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture4_180830.R) <br> [Class Code Sept 4, 2018](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture4_180904.R)<br> [Coding Challenge](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture4_coding_challenge_end_of_lecture.R)<br> [Coding Challenge Answer Key](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture4_coding_challenge_answer_key.R)<br> [Real World Examples](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture4_real_world.R)<br> [Class Code Sept 6, 2018](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture4_180906_2.R)|
  | [Lists and Data Frames](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%205%20Data%20Structures%20II.pdf)| [Ch. 20 in R for Data Science](http://r4ds.had.co.nz/vectors.html)| | |  [Class Code Sept 11, 2018](https://github.com/abbiepopa/BSDS100/blob/master/class_code/code_demo_180911.R)<br> [Coding Challenge](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture5_coding_challenges.R)|
  | [Tibbles](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%206%20Data%20Structures%20III.pdf)| [Ch. 10 in R for Data Science](http://r4ds.had.co.nz/tibbles.html)| [HW 5](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Assignment5.pdf) | Tuesday, 9/25 | [Tibbles versus Data Frames Activity](https://github.com/abbiepopa/BSDS100/blob/master/class_code/The_Lack_of_Trouble_with_Tibbles.R) <br>  [Class Code Sept 13, 2018](https://github.com/abbiepopa/BSDS100/blob/master/class_code/livecode_180913.R)<br>  [Lecture Qs Sept 13, 2018](https://github.com/abbiepopa/BSDS100/blob/master/class_code/lecture_tibble_code_challenge.R) <br> [Class Code Sept 18, 2018](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_180918.R) <br> [Tibbles versus Data Frames Activity Answer Key](https://github.com/abbiepopa/BSDS100/blob/master/class_code/The_Lack_of_Trouble_with_Tibbles_AK.pdf)|
  | [Strings and Factors](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%207%20Factors%20Strings%20and%20Times.pdf) | [Ch. 14.1 - 14.2 and 15 in R for Data Science](http://r4ds.had.co.nz/strings.html) | | |   [Class Code 180920](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_180920.R)<br>  [Class Code 180925](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_180925.R)|

**Ethics in Data Science**

| Topic | Reading | Assignment | Due Date | In Class Code |
  | :---  | :---:  | :---:  | :---:  | :---: |
| [Ethics in Data Science](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%208%20Ethics%20in%20DS.pdf) | | | | |
  
  
  **Data Wrangling and Plotting**
  
   | Topic | Reading | Assignment | Due Date | In Class Code |
   | :---  | :---:  | :---:  | :---:  | :---: |
   | [Input and Output](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%209%20Input%20and%20Output.pdf) | | [HW 6](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Assignment6.pdf) | Thursday, 10/18 | [Factor and String Lab - Rmd](https://raw.githubusercontent.com/abbiepopa/BSDS100/master/class_code/Lab_Factors_and_Strings.Rmd) <br>  [Factor and String Lab - PDF](https://github.com/abbiepopa/BSDS100/blob/master/class_code/Lab_Factors_and_Strings.pdf) <br> [Tree Data](https://raw.githubusercontent.com/abbiepopa/BSDS100/master/Data/oakland-street-trees.csv)<br>[Question Data](https://github.com/abbiepopa/BSDS100/blob/master/Data/Questions.csv.zip?raw=true) <br> [Class Code](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_181002.R) <br> [singles data](https://github.com/abbiepopa/BSDS100/blob/master/Data/singles.txt) <br> [triples data](https://github.com/abbiepopa/BSDS100/blob/master/Data/triples.txt)|  
   | [Plotting in R](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2010%20Plotting%20in%20R.pdf) | | | |[Plotting Lab as .Rmd](https://github.com/abbiepopa/BSDS100/blob/master/class_code/ggplot_lab_1.Rmd) <br> [Plotting Lab as .PDF](https://github.com/abbiepopa/BSDS100/blob/master/class_code/ggplot_lab_1.pdf)<br>  [Class Code 181009](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_181009.R)<br>  [Class Code 181011](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_181011.R)<br>  [Class Code 181018](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_181018.R)|
   | [Wrangling Data with tidyr](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2011%20Wrangling%20Data%20with%20tidyr.pdf) | [Ch. 12 in R for Data Science](http://r4ds.had.co.nz) | | |[Class Code 181025](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_181025.R)|
   | [Wrangling Data with dplyr - I](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2012%20Wrangling%20Data%20with%20dplyr%20I.pdf) | | | | [Class Code 181030](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_181030.R) <br> [Wrangling Lab - Rmd](https://github.com/abbiepopa/BSDS100/blob/master/class_code/Wrangling_Lab.Rmd) <br> [Wrangling Lab - PDF](https://github.com/abbiepopa/BSDS100/blob/master/class_code/Wrangling_Lab.pdf)|
   | [Wrangling Relational Data with dplyr](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2013%20Wrangling%20Relational%20Data%20with%20dplyr.pdf) | |  [HW 7](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Assignment_7_AMP.pdf) |  Tuesday, 11/13| [Join Lab - Rmd](https://github.com/abbiepopa/BSDS100/blob/master/class_code/Join_Lab.Rmd) <br> [Join Lab - PDF](https://github.com/abbiepopa/BSDS100/blob/master/class_code/Join_Lab.pdf) <br> [Class Code 181106](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_181106.R)|
   | [String Analysis](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2014%20String%20Analysis.pdf)  |[Ch. 14.3 - 14.7 in R for Data Science](http://r4ds.had.co.nz/strings.html) || |   [Class Code 181108](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_181108.R)|
 
 
 **Programming**
 
 | Topic | Reading | Assignment | Due Date | In Class Code |
 | :---  | :---:  | :---:  | :---:  | :---: |
 | [Control Flow](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2015%20Control%20Flow.pdf)|[Ch. 21 in R for Data Science](http://r4ds.had.co.nz/iteration.html) | [HW 8](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Assignment_8_AMP.pdf) |Tuesday 11/27 | [Class Code 181113](https://github.com/abbiepopa/BSDS100/blob/master/class_code/class_code_181113.R)|
 | [Writing Functions](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2016%20Functions.pdf)| [Ch. 19 in R for Data Science](http://r4ds.had.co.nz/functions.html)| | | [Function Lab - Rmd](https://github.com/abbiepopa/BSDS100/blob/master/class_code/Function_Lab.Rmd) <br> [Function Lab - PDF](https://github.com/abbiepopa/BSDS100/blob/master/class_code/Function_Lab.pdf)| 
 
 <!---
 
 **Statistical Modeling in R**
 
 | Topic | Reading | Assignment | Due Date | In Class Code |
 | :---  | :---:  | :---:  | :---:  | :---: |
 | [Intro to Statistical Modeling in R](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2011%20Intro%20to%20Statistical%20Modeling.pdf) | [Ch. 23 and 24 in R for Data Science](http://r4ds.had.co.nz) | | | 
--->

### DS in the Wild
| Example |
|:--- |
| [Song Lyrics](https://github.com/abbiepopa/BSDS100/blob/master/class_code/DS_in_the_Wild_Example1.pdf)|

### Case Studies
| Case Study | Data | In-Class Date | Due Date | Notes |
|:--- | :---  | :---:  | :---: | :---: |
|[CS 1](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Case_Study_1_Ramen.pdf)| [Ramen Reviews](https://github.com/abbiepopa/BSDS100/blob/master/Data/ramen.Rdata?raw=true) | September 25th, 2018| October 9th, 2018 | [Case Study 1 Notes](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2010.5%20CS1%20Review.pdf)
|[CS 2](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Case_Study_2.pdf)|[hour data](https://raw.githubusercontent.com/abbiepopa/BSDS100/master/Data/hour.csv)<br>[day data](https://raw.githubusercontent.com/abbiepopa/BSDS100/master/Data/day.csv) | October 23, 2018 | November 8, 2018 |



### Final Project
| Description | Due Date | Notes |
|:--- | :---  | :---:|
| Project Sign-Up will be through a google doc link on Canvas | November 1st at 9 AM| |
|[Final Project Description - UPDATED due to smoke](https://github.com/abbiepopa/BSDS100/blob/master/Assignments/Final_Project.pdf) | November 29th at 9:00 AM| [Final Tips and Tricks](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2010.75%20Tips%20for%20Success.pdf) <br> [Presentation Tips](https://github.com/abbiepopa/BSDS100/blob/master/Lectures/Lecture%2015.5%20Presentation%20Tips.pdf)


### Important Dates

- Monday, August 27th - Last day to add the class
- Friday, September 7th - Census date. Last day to withdraw with tuition reversal
- Tuesday, October 16th - Fall break! (**no class**)
- Friday, November 2nd - Last day to withdraw
- Thursday, November 22nd - Thanksgiving Holiday (**no class**)
- Thursday, November 29 - Final Projects Due
- Tuesday, December 4th - Last day of class
