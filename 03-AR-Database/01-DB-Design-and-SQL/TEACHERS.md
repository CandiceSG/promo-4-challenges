## Guidelines

### Morning lecture

#### Excel
Start by talking about the Food Delivery exercise. Point out the limits of
the of CSV storage (how did they store several orders, etc...)

The lecture starts with Excel. We want to introduce the notion of foreign keys,
feel free to leave the slides, and create your sheets from scratch in Excel.
Try to make the students *feel* the ids, in a 1-to-many relation, and in a
many-to-many relation.

#### Database modeling

Moving to the relational database, explain why we talk about **relationnal**.
Introduce the vocabulary:

- Schema
- Table
- Column
- Row
- Relation

Please follow the ActiveRecord / Rails convention for table and column names.

- Table names are in a plural form, in lower snake case (e.g. `users`)
- Column names are in lower snake case as well (e.g. `first_name`)
- All tables have an `id` column (all lower case)
- All foreign keys follow the pattern `#{foreign_table_singular}_id` (e.g. `user_id`)

Demo the [db.lewagon.org](http://db.lewagon.org) tool. Some stuff to know:

- To create a foreign key between `cities` and `users`, create a column
  `city_id` in the `users` table, then click on the `id` column on `cities`,
  then the button "Connect Foreign Key", and click the `city_id` column.
- Talk a bit about column types, see the [active record type list](http://stackoverflow.com/a/3956210/197944).
- Show that you can export / import a XML schema with the "Save / Load" button.

#### Intro to SQL

Explain it's a new language that you use to talk to relational databases.

Open your text editor to live-code SQL queries with students. Tell the
students that SQL **queries** end with a `;`.

The slides talk about basic `SELECT` queries. Take some time to explain
correctly the `LIKE` / `%` operator.

Explain why we need the `as` operator when using [aggregate functions](http://www.postgresql.org/docs/9.3/static/functions-aggregate.html)

Introduce joining tables. Talk about naming columns with aliases.

Today we won't talk about `INSERT`, `UPDATE` or `DELETE`, exercises focus on
reading the Database.

#### SQLite

Talk briefly about the setup (they need to download stuff). Open your terminal
and run `sqlite3` binary. Create the `cities` tables, insert data but do not
focus too much on that, explain to the students that will be the topic of the next
day. Then run some `SELECT` queries.


