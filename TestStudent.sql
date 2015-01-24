--������
create table Student(
ID int primary key,
Name char(20) NOT NULL
)

create table Course(
ID smallint primary key,
Name char(10) NOT NULL
)

create table SC(
NameID int,
CourseID smallint,
Score unsigned int,
primary key(NameID,CourseID),
foreign key(NameID) references Student(ID),
foreign key(CourseID) references Course(ID)
)
--ɸѡ
select Student.Name, Course.Name Course, Score from Student 
join SC on Student.ID=SC.NameID
join Course on Course.ID=SC.CourseID
where Score<95

