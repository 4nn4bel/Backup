 DELIMITER //
 DROP PROCEDURE IF EXISTS add_user//
 CREATE PROCEDURE add_user(pUUID int)
   BEGIN
   Declare error_message varchar(20) default "something is wrong"; 
   Declare uuid int (11); 
   Select pUUID into uuid; 
   if (uuid !=0) 
   then select error_message; 
   else 
   insert user_uuid(user_uuid) values (uuid);
    Select user_id from user_uuid order by user_id desc limit 1; 
   end if;
   END //
 DELIMITER ;