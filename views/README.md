# Views

## Definiton
- A view is a *virtual* table
- The definition is stored in the catalog
- Column names are inherited from the base tables
- Columns may be explicitly named in the definition
- Columns must be explicitly named if ambiguous
- Computed columns must be explicitly named


## Updatability
- Since a view is a virtual table, "updates" to a view can only be done by the DBMS updating the base tables from which the view is defined.
### A view is only *updatable* if and only if
- It does not contain any of the keywords `JOIN`, `UNION`, `INTERSECT`, `EXCEPT`.
- It does not contain the keyword `DISTINCT`
- Every column in the view corresponds to a uniquely identifiable base table column.
- The `FROM` clause references exactly one table which must be a base table for an updatable view.
- The table referenced in the `FROM` clause cannot be referenced in the `FROM` clause of a nested `WHERE` clause.
- It does not have a `GROUP BY` clause.
- It does not have a `HAVING` clause.
- Updatable means: insert, delete, update are ok.
