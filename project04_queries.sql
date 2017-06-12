#
# A query to retrieve the major fields for every person
#
#select id,person_type,sec_id,last_name,first_name,street,city,state,zipcode,country,email_address1 from Persons;

#
# A query to retrieve the email(s) of a given person
#
#select email_address1,email_address2,email_address3,email_address4,email_address5 from Persons where id = '231';

#
# A query to add an email to a specific person
#

#
# A query to change the email address of a given email record
#

#
# A query (or series of queries) to remove a given person record
#
#delete persons, portfolios from persons, portfolios where
#(persons.id = portfolios.owner_id or
#persons.id = portfolios.broker_id or
#persons.id = portfolios.beneficiary_id) and
#persons.id = '6doc';

# A query to create a person record
#INSERT INTO Persons VALUES ('1001d','C', NULL, 'Kornbluh', 'Sarah','1226 P Street','Lincoln','NE','68508','USA', 'skornbluh@gmail.com', NULL, NULL, NULL, NULL);

#
# A query to get all the assets in a particular portfolio
#
select 
	assets.id, assets.account_type, assets.label, assets.apr, assets.total_balance, assets.base_rate_of_return, assets.quarterly_dividend, assets.omega_measure, assets.percentage
	from assets, portfolios 
    where assets.id = portfolios.account_id and portfolios.id = 'PF002';
# A query to get all the assets of a particular person
# A query to create a new asset record
# A query to create a new portfolio record
# A query to associate a particular asset with a particular portfolio
# A query to find the total number of portfolios owned by each person
# A query to find the total number of portfolios managed by each person
# A query to find the total value of all stocks in each portfolio (hint: you can take an
# aggregate of a mathematical expression)
# A query to detect an invalid distribution of private investment assets (that is, a query
# to add up the stake percentage of each such asset and return a list of investments
# whose percentage exceeds 100%)
#