#
# A query to retrieve the major fields for every person
#
	select * from Persons;

#
# A query to retrieve the email(s) of a given person
#
	select * from Emails where person_id = '944c';

#
# A query to add an email to a specific person
#
	INSERT INTO Emails (person_id, email_address) VALUES ('123lst','skornbluh@gmail.com');
	select * from Emails where person_id = '123lst';

#
# A query to change the email address of a given email record
#

	UPDATE Emails
	SET email_address = 'tinyrick@pleasehelpme.com'
	WHERE person_id = '944c' and id = 1;

	select * from Emails where id = 1;

#
# A query (or series of queries) to remove a given person record
#
	SET SQL_SAFE_UPDATES = 0;
    DELETE FROM Emails where Emails.id in ( '1', '2');
    DELETE FROM Portfolios where Portfolios.id = 'PT001';
	DELETE FROM Persons where Persons.id = '944c';
	SET SQL_SAFE_UPDATES = 1;

# A query to create a person record
	INSERT INTO Persons VALUES ('1001d','C', NULL, 'Kornbluh', 'Sarah','1226 P Street','Lincoln','NE','68508','USA', 'skornbluh@gmail.com', NULL, NULL, NULL, NULL);


#
# A query to get all the assets in a particular portfolio
#
	select * from Portfolios, Assets where Portfolios.id = 'PF200' and Assets.id = Portfolios.account_id;
#
# A query to get all the assets of a particular person
#
	select * from Portfolios, Assets where Assets.id = Portfolios.account_id  and Portfolios.owner_id = '2ndbestd';

#
# A query to create a new asset record
#
	INSERT INTO Assets VALUES('SVEMNY','D','Savings Account','0.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

# A query to create a new portfolio record
	INSERT INTO Portfolios VALUES('SK3497','kdoame','394','4slbd','495KK');

# A query to associate a particular asset with a particular portfolio
	UPDATE Portfolios
	SET account_id = 'IND321'
	WHERE Portfolios.id = 'PF200';
	select * from Portfolios where account_id = 'IND321';
    
#
# A query to find the total number of portfolios owned by each person
#
	SELECT owner_id, COUNT(*) FROM Portfolios GROUP BY owner_id;

#
# A query to find the total number of portfolios managed by each person
#
	SELECT broker_id, COUNT(*) FROM Portfolios GROUP BY broker_id;

	select id,account_type,stock_symbol, share_price, number_of_shares,total_value from Assets;
    
#
# A query to find the total value of all stocks in each portfolio (hint: you can take an
# aggregate of a mathematical expression)

	SELECT sum(total_value)
	FROM Portfolios,Assets where Assets.account_type = 'S' group by Portfolios.id;

# A query to detect an invalid distribution of private investment assets (that is, a query
# to add up the stake percentage of each such asset and return a list of investments
# whose percentage exceeds 100%)
#
	select id,account_type, percentage from Assets GROUP BY id; 
