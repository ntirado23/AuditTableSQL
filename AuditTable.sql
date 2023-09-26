-- Nicole Tirado IT2351 Summer 2023
-- This creates an event to clear the audit table every two days starting now. 
USE moondollars_coffee
DROP EVENT IF EXISTS clear_customers_audit
DELIMITER //
CREATE EVENT clear_customers_audit
ON SCHEDULE
   EVERY 2 DAY
     STARTS NOW()
DO
BEGIN
TRUNCATE TABLE customers_audit;


END //
DELIMITER ;