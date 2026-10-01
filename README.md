# Rails Task Manager

A small Rails application for creating, viewing, editing, and deleting tasks.

## Requirements

- Ruby 3.3.5 (see `.ruby-version`)
- Bundler
- SQLite 3 and the system packages needed to install the `sqlite3` Ruby gem

The application uses SQLite for its database and does not require a separate database server or JavaScript build step.

## Setup

From the project directory, run:

```sh
bin/setup
```

This installs the gems, prepares the database, clears old logs and temporary files, and starts the development server. Open [http://localhost:3000](http://localhost:3000) to use the app.

To prepare the app without starting the server, use:

```sh
bin/setup --skip-server
bin/dev
```

`bin/dev` starts the Rails development server. The development SQLite database is stored at `storage/development.sqlite3`.

## Tests and Checks

Run the Rails test suite with:

```sh
bin/rails test
```

To run the full CI checks, including Ruby style and security audits, use:

```sh
bin/ci
```

## Production

The included `Dockerfile` is intended for production deployments. It expects `RAILS_MASTER_KEY` to be supplied at runtime; see `config/deploy.yml` for the Kamal deployment configuration.
