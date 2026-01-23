CREATE TABLE EmployeeEarnings (
    EmployeeID INT,
    PayPeriodID INT,
    WorkedDays INT,
    Basic DECIMAL(10,2),
    IncentivePay DECIMAL(10,2),
    MealAllowance DECIMAL(10,2),
    PRIMARY KEY (EmployeeID, PayPeriodID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (PayPeriodID) REFERENCES PayPeriods(PayPeriodID)
);
