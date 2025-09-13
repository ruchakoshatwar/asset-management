ALTER PROCEDURE SP_Display1
       @memberid nvarchar(50)
      ,@fullname nvarchar(50)
      ,@accountstatus nvarchar(50)
      ,@dob nvarchar(50)
      ,@contactno nvarchar(50)
      ,@emailid nvarchar(50)
      ,@state nvarchar(50)
      ,@city nvarchar(50)
      ,@pincode nvarchar(50)
      ,@fulladdress nvarchar(50)
	  AS
	  BEGIN
	  INSERT INTO member_management_tbl
	  (
	   memberid
      ,fullname
      ,accountstatus
      ,dob
      ,contactno
      ,emailid
      ,state
      ,city
      ,pincode
      ,fulladdress
	  )
	  VALUES
	  (
	   @memberid
      ,@fullname
      ,@accountstatus
      ,@dob
      ,@contactno
      ,@emailid
      ,@state
      ,@city
      ,@pincode
      ,@fulladdress
	  )
END