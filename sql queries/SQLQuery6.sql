ALTER procedure sp_admin_login_tbl
@username nvarchar(50),
@password nvarchar(50)
AS
BEGIN
INSERT INTO admin_login_tbl
(
 username,
 password
)
VALUES
(
  @username,
  @password
)
END