
--create nonclustered index on Author table
CREATE NONCLUSTERED INDEX index_authors_name
ON Author (LastName, FirstName);

--create nonclustered index on Editor table
CREATE NONCLUSTERED INDEX index_editors_name
ON Editor (LastName, FirstName);

--create nonclustered index on Book table
CREATE NONCLUSTERED INDEX index_book_title
ON Book (Title);

--create nonclustered index on Publisher table
CREATE NONCLUSTERED INDEX index_publisher_name
ON Publisher (PublisherName);

--create nonclustered index on Store table
CREATE NONCLUSTERED INDEX index_store_name
ON Store (StoreName);

--ALTER INDEX index_authors_name ON Author DISABLE;
--ALTER INDEX index_editors_name ON Editor DISABLE;
--ALTER INDEX index_book_title ON Book DISABLE;
--ALTER INDEX index_publisher_name ON Publisher DISABLE;
--ALTER INDEX index_store_name ON Store DISABLE;