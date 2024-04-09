DELIMITER //

CREATE FUNCTION FormatSeconds(sec INT)
RETURNS VARCHAR(255)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE seconds INT;

    SET days = sec DIV (24 * 3600);
    SET sec = sec MOD (24 * 3600);
    SET hours = sec DIV 3600;
    SET sec = sec MOD 3600;
    SET minutes = sec DIV 60;
    SET seconds = sec MOD 60;

    RETURN CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');
END//