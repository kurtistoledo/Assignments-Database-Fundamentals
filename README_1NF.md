First Normal Form (1NF):

Each table in the "BookHaven" schema contains only atomic values, meaning that each column holds a single value, and there are no repeating groups or arrays.
Example: In the Authors table, each column (author_id, author_name, nationality, birth_year, death_year, biography, collaborator_id) holds atomic values. There are no multi-valued attributes, and each piece of data is stored in its own cell.

Second Normal Form (2NF):

In addition to being in 1NF, each non-key attribute in every table is fully functionally dependent on the entire primary key.
Example: In the Books table, the non-key attributes (title, isbn, genre, price, publication_year) are all fully functionally dependent on the primary key (book_id). There are no partial dependencies where only part of the primary key determines the value of a non-key attribute.

Third Normal Form (3NF):

In addition to being in 2NF, there are no transitive dependencies, meaning that non-key attributes are not dependent on other non-key attributes.
Example: The Transactions table is in 3NF. The non-key attributes (transaction_date, quantity, total_price) are directly dependent on the primary key (transaction_id), and there are no transitive dependencies. Similarly, in the Authors table, the biography attribute is directly dependent on the author_id and is not dependent on any other non-key attributes.
Overall, the "BookHaven" database schema demonstrates adherence to normalization principles by ensuring data is organized efficiently, avoiding redundancy, and maintaining data integrity. This design allows for effective storage, retrieval, and manipulation of data while minimizing the risk of anomalies such as insertion, update, and deletion anomalies.