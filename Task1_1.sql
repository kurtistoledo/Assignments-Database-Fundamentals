-- Create Authors Table
CREATE TABLE Authors (
    author_id INTEGER PRIMARY KEY,
    author_name TEXT NOT NULL,
    nationality TEXT,
    birth_year INTEGER,
    death_year INTEGER,
    biography TEXT
);

-- Create Books Table
CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    isbn TEXT,
    genre TEXT,
    price REAL,
    publication_year INTEGER,
    author_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    phone TEXT,
    address TEXT
);

-- Create Transactions Table
CREATE TABLE Transactions (
    transaction_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    book_id INTEGER,
    transaction_date DATE,
    quantity INTEGER,
    total_price REAL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
