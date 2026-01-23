CREATE PROCEDURE sp_CalculateDeductions
@EmployeeID INT,
@PayPeriodID INT,
@Basic DECIMAL(10,2)
AS
BEGIN
    DECLARE @PF DECIMAL(10,2),
            @PT DECIMAL(10,2);

    SET @PF=@Basic*0.12;

    SELECT @PT=ProfessionalTax
    FROM EmployeeDeductions
    WHERE EmployeeID=@EmployeeID AND PayPeriodID=@PayPeriodID;
    SELECT @PF AS ProvidentFund,
           @PT AS ProfessionalTax,
           (@PF+@PT) AS TotalDeductions;
END;
