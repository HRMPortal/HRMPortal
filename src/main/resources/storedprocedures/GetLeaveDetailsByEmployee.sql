DELIMITER $$
CREATE DEFINER=`CSCI5308_1_DEVINT_USER`@`%` PROCEDURE `get_leavedetails`(
	IN employee_id varchar(10)
)
BEGIN
	SELECT * FROM EMPLOYEE_LEAVE_INFO WHERE EMPLOYEE_LEAVE_INFO.EMPLOYEE_ID=employee_id;
END$$
DELIMITER ;
