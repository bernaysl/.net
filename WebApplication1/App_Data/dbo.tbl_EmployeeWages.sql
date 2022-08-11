CREATE TABLE [dbo].[tbl_EmployeeWages] (
    [Wage_ID]         INT   IDENTITY (1, 1) NOT NULL,
	[Dept_ID]         INT   NOT NULL,
    [Wage_Paid_Date]  DATE  NOT NULL,
    [Wage_Amount]     MONEY NOT NULL,
    [Wage_Commission] MONEY NOT NULL,
    [Wage_Total]      AS    ([Wage_Amount]+[Wage_Commission]),
    [Month_ID]        INT   NOT NULL,
    CONSTRAINT [PK_tbl_EmployeeWages_Wage_ID] PRIMARY KEY CLUSTERED ([Wage_ID] ASC)
);

