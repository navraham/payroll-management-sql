CREATE TABLE EmployeeDeductions (
    EmployeeID INT,
    PayPeriodID INT,
    ProfessionalTax DECIMAL(10,2),
    PRIMARY KEY (EmployeeID, PayPeriodID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (PayPeriodID) REFERENCES PayPeriods(PayPeriodID)
);
