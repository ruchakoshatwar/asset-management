ALTER PROCEDURE SP_Printer_Cartinage1
       @StaffNo nvarchar(50)
      ,@FullName nvarchar(50)
      ,@ContactNo nvarchar(50)
      ,@EmailID nvarchar(50)
      ,@Designation nvarchar(50)
      ,@Cost_Center_of_Department nvarchar(50)
      ,@Printer_Asset_No nvarchar(50)
      ,@Quantity nvarchar(50)
      ,@Printer_Model nvarchar(50)
      ,@Signature nvarchar(50)
      ,@Department nvarchar(50)
      ,@City nvarchar(50)
      ,@Pincode nvarchar(50) 
      ,@Form_name nvarchar(50)
	  AS
	  BEGIN
	  INSERT INTO Printer_Cartinage1
	  (
	   StaffNo
      ,FullName
      ,ContactNo
      ,EmailID
      ,Designation
      ,Cost_Center_of_Department
      ,Printer_Asset_No
      ,Quantity
      ,Printer_Model
      ,Signature
      ,Department
      ,City
      ,Pincode
      ,Form_name
	  )
	  VALUES
	  (
	   @StaffNo
      ,@FullName
      ,@ContactNo
      ,@EmailID
      ,@Designation
      ,@Cost_Center_of_Department
      ,@Printer_Asset_No
      ,@Quantity
      ,@Printer_Model
      ,@Signature
      ,@Department
      ,@City
      ,@Pincode
      ,@Form_name
	  )
END