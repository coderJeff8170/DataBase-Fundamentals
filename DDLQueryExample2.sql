SELECT StudentID, Name FROM StudentTable
	WHERE StudentID < 140;

SELECT * FROM StudentTable;

UPDATE StudentTable
	SET State = 'SC', City = 'Fort Mill', Zip = 29707
	WHERE City = 'Rock Hill';

DELETE FROM StudentTable
	WHERE City = 'Fort Mill';

	SELECT * FROM CustomerTable;