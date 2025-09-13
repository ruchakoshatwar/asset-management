ALTER PROCEDURE SP_Printer_Cartinage
       @staff_no nvarchar(50)
      ,@full_name nvarchar(50)
      ,@contact_number nvarchar(50)
      ,@mailid nvarchar(50)
      ,@designation nvarchar(50)
      ,@Cost_Center_of_Department nvarchar(50)
      ,@printer_assent_number nvarchar(50)
      ,@quantity nvarchar(50)
      ,@printer_make nvarchar(50)
      ,@signature nvarchar(50)
      ,@descofmaterial nvarchar(50)
      ,@department nvarchar(50)
      ,@city nvarchar(50)
      ,@pincode nvarchar(50)
      ,@Form_name nvarchar(50)
   AS
   BEGIN
   INSERT Printer_Cartinage
     (
       staff_no 
      ,full_name 
      ,contact_number
      ,mailid
      ,designation
      ,Cost_Center_of_Department
      ,printer_assent_number
      ,quantity
      ,printer_make
      ,signature
      ,descofmaterial
      ,department
      ,city
      ,pincode
      ,Form_name
	  )
	  VALUES
	  (
	  @staff_no 
      ,@full_name 
      ,@contact_number
      ,@mailid
      ,@designation
      ,@Cost_Center_of_Department
      ,@printer_assent_number
      ,@quantity
      ,@printer_make
      ,@signature
      ,@descofmaterial
      ,@department
      ,@city
      ,@pincode
      ,@Form_name
	  )
END