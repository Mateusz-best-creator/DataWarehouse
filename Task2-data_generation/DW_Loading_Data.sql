use DateWarehouses_University;

BULK INSERT Specialization
		FROM 'C:/Users/User/Desktop/DataWarehouses/GeneratedCSV/specialization.csv'
		WITH (
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n'
		);

BULK INSERT SpecializationMemberAssociation
		FROM 'C:/Users/User/Desktop/DataWarehouses/GeneratedCSV/specialization_faculty_member.csv'
		WITH (
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n'
		);

BULK INSERT FacultyMember
		FROM 'C:/Users/User/Desktop/DataWarehouses/GeneratedCSV/faculty_member.csv'
		WITH (
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n'
		);

BULK INSERT Student
		FROM 'C:/Users/User/Desktop/DataWarehouses/GeneratedCSV/student.csv'
		WITH (
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n'
		);

BULK INSERT Professor
		FROM 'C:/Users/User/Desktop/DataWarehouses/GeneratedCSV/professor.csv'
		WITH (
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n'
		);

BULK INSERT Department
		FROM 'C:/Users/User/Desktop/DataWarehouses/GeneratedCSV/department.csv'
		WITH (
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n'
		);


BULK INSERT Professor_Department
		FROM 'C:/Users/User/Desktop/DataWarehouses/GeneratedCSV/professor_department.csv'
		WITH (
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n'
		);

BULK INSERT Student_Department
		FROM 'C:/Users/User/Desktop/DataWarehouses/GeneratedCSV/student_department.csv'
		WITH (
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n'
		);

select * from Student_Department;