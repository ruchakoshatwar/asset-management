 ALTER PROCEDURE SP_Request_Form
	  @staffNo varchar(50),
      @FullName varchar(50),
      @ContactNo varchar(50),
      @EmailID varchar(50),
      @Designation varchar(50),
      @Location varchar(50),
      @Quantity varchar(50),
      @Department varchar(50),
      @City varchar(50),
      @Pincode varchar(50),
      @Description_of_Material varchar(50)
AS
BEGIN
    insert into Request_Form
	(
	  staffNo,
      FullName,
      ContactNo,
      EmailID,
      Designation,
      Location,
      Quantity,
      Department,
      City,
      Pincode,
      Description_of_Material
	)
	values
	(

	  @staffNo,
      @FullName,
      @ContactNo,
      @EmailID,
      @Designation,
      @Location,
      @Quantity,
      @Department,
      @City,
      @Pincode,
      @Description_of_Material
	)
END