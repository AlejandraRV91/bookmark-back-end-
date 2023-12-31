<!-- @format -->

# Bookmark

## Setup Instructions

1. Run `npm install` to install the required dependencies.

2. Create a `.env` file in the root of the project and add the following information with your specific values:

```plaintext
PORT=3003
PG_HOST=localhost
PG_PORT=5432
PG_DATABASE=bookmarks_dev
PG_USER=postgres
PG_PASSWORD=0
```

Be careful not to share this file with sensitive information in public repositories, as it may contain important credentials for database connection or other services.

## Execution Instructions

Once you have completed the setup steps above, you can run the application with:

1. Set up the database schema by executing the following command in your terminal:

```bash
psql -f db/schema.sql
```

2. Populate the database with seed data by executing the following command in your terminal:

```bash
psql -f db/seed.sql
```

3. Finally, start the application by running:

```bash
npm start
```

Ensure that PostgreSQL is installed and properly configured on your system for the database commands to work.

Now you should have your application up and running!

For any issues or questions, feel free to reach out for support.
