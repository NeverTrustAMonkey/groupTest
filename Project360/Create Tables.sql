CREATE TABLE Student (

	#An individual ID number for each student
	STUDENT_ID			integer				NOT NULL,
    
    # The name of each student, presented in 
    STUDENT_NAME		varchar (255)			NOT NULL,

	#The students Streed address, presented in 
	ADDRESS 			varchar(255)			NOT NULL,
    
    #The Students email address
    EMAIL 				varchar(255)			NOT NULL,
    
    GPA					double				NOT NULL,
    
    #Estimated Graduation Year(marked as string in class, shouldnt it be int?)
    GRADYEAR			varchar(255),
    
    #Name of the Transfer College
    TRANSFER 			varchar(255),
    
    #The student's program
    PROGRAM				varchar(255),
    
    #the degree level of the student(Look here to possibly set enums)
	DEGREE_LEVEL		varchar(255),
    
    #Student term(Look here to possibly set enum values)
    TERM				varchar(255),
    
    #CONSTRAINTS
    CONSTRAINT			STUDENT_PK			PRIMARY KEY (STUDENT_ID)
   
);

CREATE TABLE Internship (
	
    #
	STUDENT_ID			integer				NOT NULL,
    
    #name of the company that the student interned at
    COMPANY_NAME		varchar(255),
    
    #salary per year
    SALARY				varchar(255),
    
    #the date which the studetn started the internship
    START_DATE			varchar(255),
    
    #The number of weeks a internship lasts
    DURATION			integer,
    
    CONSTRAINT			INTERNSHIP_PK		PRIMARY KEY (STUDENT_ID)
    	#TODO USE ANOTHER TABLE FOR EACH

	#skillsUsed: array[String](TODO- Create another table?)
    #

    
);

CREATE TABLE Job (
	
    #name of the job
    JOB_TITLE			varchar(255),
    
    #date that the student started the job
	START_DATE			varchar(255),
    
	#salary that the student earned
    SALARY				varchar(255),
    
    
	COMPANY_NAME		varchar(255),
    
    #the ID number of the student who the job belongs to
    STUDENT_ID			integer REFERENCES Student(STUDENT_ID)
    
    
	#TODO USE ANOTHER TABLE FOR EACH
	# skillsUsed: array[String](TODO - Represent this as another table, or as an enum

);