use DateWarehouses_University;

BULK INSERT Specialization
		FROM 'C:/Users/User/Desktop/specialization.csv'
		WITH (
			FIELDTERMINATOR = ',',
			ROWTERMINATOR = '\n'
		);

select * from Specialization;