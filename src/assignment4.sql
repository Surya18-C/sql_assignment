use ecommerce
--create table email_signup
create table email_signup(
	id int,
	email_id varchar(30),
	signup_date DATE);
--insert values in email_signup
insert into email_signup (id,email_id,signup_date) values
(1, 'Rajesh@Gmail.com', '2022-02-01'),
(2, 'Rakesh_gmail@rediffmail.com', '2023-01-22'),
(3, 'Hitest@Gmail.com', '2020-09-08'),
(4, 'Salil@Gmmail.com', '2019-07-05'),  
(5, 'Himanshu@Yahoo.com', '2023-05-09'),
(6, 'Hitesh@Twitter.com', '2015-01-01'),
(7, 'Rakesh@facebook.com', null);
-- Query to find gmail accounts with latest and first signup date and difference
select count(*) AS count_gmail_account,
MAX(signup_date) AS latest_signup_date,
MIN(signup_date) AS first_signup_date,
DATEDIFF(DAY, MIN(signup_date), MAX(signup_date) AS diff_in_days
FROM email_signup where LOWER(email_id) like '%gmail.com';
	
