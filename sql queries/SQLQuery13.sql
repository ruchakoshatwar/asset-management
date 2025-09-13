ALTER PROCEDURE sp_master_master_tbl
	@full_name nchar(50),
	@dob nchar(50),
	@contact_number nchar(50),
	@email nchar(50),
	@state nchar(50),
	@selectcity nchar(50),
	@pincode nchar(50),
	@full_address nchar(50),
	@create_user_id nchar(50),
	@password nchar(50),
	@confpassword nchar(50),
	@account_status nchar(50) 
AS
BEGIN
    insert into master_master_tbl
	(
	full_name,
	dob,
	contact_number,
	email,
	state,
	selectcity,
	pincode,
	full_address,
	create_user_id,
	password,
	confpassword,
	account_status
	)
	values
	(

	@full_name,
	@dob,
	@contact_number,
	@email,
	@state,
	@selectcity,
	@pincode,
	@full_address,
	@create_user_id,
	@password,
	@confpassword
	@account_status
	)
END