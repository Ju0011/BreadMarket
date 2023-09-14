CREATE TABLE IF NOT EXISTS bread (
	b_id VARCHAR(10) NOT NULL,
	b_name VARCHAR(10),
	b_unitPrice INTEGER,
	b_description TEXT,
	b_category VARCHAR(20),
	b_unitsInStock LONG,
	b_fileName VARCHAR(20),
	PRIMARY KEY (b_id)
)default CHARSET=utf8;

select * from bread;