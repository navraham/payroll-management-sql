-- Example Payslip Generation
DECLARE @EmployeeID INT=2,@PayPeriodID INT=1;

EXEC sp_CalculateEarnings @EmployeeID,@PayPeriodID;
