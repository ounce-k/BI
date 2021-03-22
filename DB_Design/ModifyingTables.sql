
--adding a CHECK constraint to Book table
ALTER TABLE Book
ADD CONSTRAINT positive_price CHECK(ListPrice > 0);

--adding a CHECK constraint to Stocks table
ALTER TABLE Stocks
ADD CONSTRAINT positive_quantity CHECK(Quantity >= 0);

--adding NOT NULL constraint to Editor table
ALTER TABLE Editor
ALTER COLUMN Phone VARCHAR (50) NOT NULL;

--adding NOT NULL constraint to Store table
ALTER TABLE Store
ALTER COLUMN Address VARCHAR (255) NOT NULL;

--increase the size of the column StoreName in Store table
ALTER TABLE Store ALTER COLUMN StoreName VARCHAR (150);

--decrease the size of the column Address in Publisher table
ALTER TABLE Publisher ALTER COLUMN Address VARCHAR (150);

--remove columns from an Editor table
ALTER TABLE Editor
DROP COLUMN Address, City, Country;

--adding default value to the Quantity column of the Stocks table
ALTER TABLE Stocks
ADD CONSTRAINT zero_quantity
DEFAULT 0 FOR Quantity;

--adding one more column to the existing table
ALTER TABLE Store
ADD Notes VARCHAR(255) DEFAULT 'No additional information provided';
