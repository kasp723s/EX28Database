
CREATE TABLE INVOICE (
	InvoiceNumber	Int				NOT NULL IDENTITY (1,1),
	InvoiceDate		DateTime2		NOT NULL,
	SubTotal		Decimal			NOT NULL,
	TaxPct			Decimal			NOT NULL,
	Total			Decimal			NOT NULL,
	CONSTRAINT		INVOICE_PK		PRIMARY KEY (InvoiceNumber),
	);

CREATE TABLE PRODUCT (
	ProductNumber		INT				NOT NULL,
	ProductType			NVARCHAR(25)	NOT NULL,
	ProductDesciption	NVARCHAR(100)	NOT NULL,
	UnitPrice			DECIMAL			NOT NULL,
	CONSTRAINT			PRODUCT_PK		PRIMARY KEY (ProductNumber),
	);

CREATE TABLE LINE_ITEM (
	InvoiceNumber	INT				NOT NULL,
	LineNumber		INT				NOT NULL,
	ProductNumber	INT				NOT NULL,
	Quantity		INT				NOT NULL,
	Unitprice		DECIMAL			NOT NULL,
	Total			DECIMAL			NOT NULL,
	CONSTRAINT		LINE_ITEM_PK	PRIMARY KEY (InvoiceNumber, LineNumber),
	CONSTRAINT		INVOICE_FK		FOREIGN KEY (InvoiceNumber)
						REFERENCES INVOICE (InvoiceNumber),
	CONSTRAINT		PRODUCT_FK		FOREIGN KEY (ProductNumber)
						REFERENCES PRODUCT (ProductNumber)
	);
