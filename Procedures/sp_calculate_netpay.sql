CREATE PROCEDURE sp_CalculateNetPay
@TotalEarnings DECIMAL(10,2),
@TotalDeductions DECIMAL(10,2)
AS
BEGIN
    SELECT (@TotalEarnings-@TotalDeductions) AS NetPay;
END;
