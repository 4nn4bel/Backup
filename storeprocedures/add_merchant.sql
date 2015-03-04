 DELIMITER //
 DROP PROCEDURE IF EXISTS add_merchant//
 CREATE PROCEDURE add_merchant(pMName varchar(60), pMEmail varchar(60), pMContact int)
   BEGIN
   Declare error_message varchar(20) default "something is wrong"; 
   Declare uuid int (11); 
   Insert into merchant(merchant_name, merchant_email, merchant_contact)
   values
   (pMName, pMEmail, pMContact); 
   END //
 DELIMITER ;