Create DATABASE DBLab1;
use DBLab1;		
create table Students(
	studentID int not null,
	StudentName nvarchar(30),
	Age int,
	Email nvarchar(30),
	PRIMARY KEY(studentID),
);
insert Students values(1, 'Nguyen Quang An', isnull, 'an@yayoo.com'),(2, 'Nguyen Cong Vinh', 20, 'vinh@gmail.com'),(3, 'Nguyen Van Quyen', 19, 'quyen'),(4,'Pham Thanh Binh', 25, 'binh@com'),(5, 'Nguyen Van Tai Em', 30, 'taiem@sport.vn');
select StudentName From Students order by studentID;
Alter table Students
Add constraint do_tuoi Check (Age between 15 and 50);


create table Classes(
	ClassID int not null,
	ClassName nvarchar(30),
	PRIMARY KEY(classID),
);
insert Classes values(1,'C0706L'),(2,'C0708G');

create table ClassStudent(
	StudentId int,
	ClassID int,
	FOREIGN KEY REFERENCES Students(studentID),
);
insert ClassStudent values(1,1),(2,1),(3,2),(4,2),(5,2);

create table Subjects(
	SubjectID int,
	SubjectName nvarchar(30),
	PRIMARY KEY(studentID),
);
insert Subjects values(1,'SQL'),(2,'Java'),(3,'C'),(4,'Visual Basic');
select SubjectName From Subjects order by SubjectID;

create table Marks(
	Mark int,
	SubjectID int,
	StudentID int,
	FOREIGN KEY REFERENCES Students(studentID),
);
insert Marks values(8,1,1),(4,2,1),(9,1,1),(7,1,3),(3,1,4),(5,2,5),(8,3,3),(8,3,5),(3,2,4);
