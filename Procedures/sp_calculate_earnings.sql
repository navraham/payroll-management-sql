CREATE PROCEDURE sp_CalculateEarnings
@EmployeeID INT,
@PayPeriodID INT
AS
BEGIN
    DECLARE @Basic DECIMAL(10,2),
            @IP DECIMAL(10,2),
            @MA DECIMAL(10,2),
            @HRA DECIMAL(10,2),
            @TotalEarnings DECIMAL(10,2);
    SELECT @Basic=Basic,@IP=IncentivePay,@MA=MealAllowance
    FROM EmployeeEarnings
    WHERE EmployeeID=@EmployeeID AND PayPeriodID=@PayPeriodID;

    SET @HRA=@Basic*0.20;
    SET @TotalEarnings=@Basic+@HRA+@IP+@MA;

    SELECT @Basic AS Basic,@HRA AS HRA,
           @IP AS IncentivePay,@MA AS MealAllowance,
           @TotalEarnings AS TotalEarnings;
END;
