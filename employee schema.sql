CREATE TABLE Employee (
    Num_E INT PRIMARY KEY,
    Name VARCHAR(255),
    Position VARCHAR(255),
    Salary DECIMAL(10, 2),
    Department_Num_S INT,
    FOREIGN KEY (Department_Num_S) REFERENCES Department(Num_S)
);

CREATE TABLE Department (
    Num_S INT PRIMARY KEY,
    "Label" VARCHAR(255),
    Manager_Name VARCHAR(255)
);
CREATE TABLE Project (
    Num_P INT PRIMARY KEY,
    Title VARCHAR(255),
    Start_Date DATE,
    End_Date DATE,
    Department_Num_S INT,
    FOREIGN KEY (Department_Num_S) REFERENCES Department(Num_S)
);

CREATE TABLE Employee_Project (
    Employee_Num_E INT,
    Project_Num_P INT,
    Role VARCHAR(255),
    FOREIGN KEY (Employee_Num_E) REFERENCES Employee(Num_E),
    FOREIGN KEY (Project_Num_P) REFERENCES Project(Num_P)
);

