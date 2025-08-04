CREATE TABLE Students (
      student_id INT PRIMARY KEY,
      student_name VARCHAR(100) NOT NULL,
      email VARCHAR(100) UNIQUE
);

INSERT INTO Students
VALUES(1,'Yash Tak','yash@gmail.com'),
(2,'Rahul shah','rahul@gmail.com');

SELECT * FROM Students;

CREATE TABLE Books (
      book_id INT PRIMARY KEY,
      title VARCHAR(255) NOT NULL,
      author VARCHAR(100) NOT NULL,
      available_books INT CHECK (available_books >= 0)
);


INSERT INTO Books(book_id,title,author,available_books)
VALUES(101,'Power of subconcius mind','Dr Joseph Murphy',5),
(102,'Think and Grow Rich','Napoleon Hill',6),
(103,'Psychology of Money','Morgan Housel',7);

SELECT * FROM Books;

CREATE TABLE issued_book (
	  issue_id SERIAL PRIMARY KEY,
	  student_id INT,
	  book_id INT,
	  issue_date DATE NOT NULL,
	  FOREIGN KEY (student_id) REFERENCES Students(student_id),
	  FOREIGN KEY (book_id) REFERENCES Books(book_id)
);


INSERT INTO issued_book(student_id,book_id,issue_date)
VALUES(1,101,'2025-04-27'),
(2,102,'2025-04-30');

SELECT * FROM issued_book;
