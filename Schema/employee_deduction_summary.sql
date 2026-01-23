CREATE TABLE EmployeeDeductionSummary (
    EmployeeID INT,
    PayPeriodID INT,
    ProvidentFund DECIMAL(10,2),
    TotalDeductions DECIMAL(10,2),
    PRIMARY KEY (EmployeeID, PayPeriodID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (PayPeriodID) REFERENCES PayPeriods(PayPeriodID)
);
