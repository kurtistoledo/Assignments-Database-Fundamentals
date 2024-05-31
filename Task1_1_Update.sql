-- Alter Authors Table to Add collaborator_id Column
ALTER TABLE Authors
ADD collaborator_id INTEGER;

-- Add Foreign Key Constraint
ALTER TABLE Authors
ADD CONSTRAINT fk_collaborator
    FOREIGN KEY (collaborator_id)
    REFERENCES Authors(author_id);
