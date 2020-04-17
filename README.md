# csvsql ![Stack Test CI](https://github.com/amcknight/csvsql/workflows/Stack%20Test%20CI/badge.svg)
A tool for running SQL queries on CSVs
## Installation
```shell script
git clone https://github.com/amcknight/csvsql.git
cd csvsql
stack build
stack install
```
I put `~/.local/bin` in my PATH to make it available in my shell after install.
## Usage
With a CSV that has headers 'name' and 'age' in "my/dir/" you could, for example, run:

`csvsql "SELECT name, "Mc" ++ name ++ "face" AS mcname FROM my/dir/people WHERE age < 30"`
## Roadmap
Subject to drastic changes
### v0.1
* A CLI that runs SQL using SELECT, FROM, and WHERE
* single table FROM
* Basic Bool, Int, and String support in queries and CSVs
* Unit tests
### v0.2
* AS support for SELECT and FROM names
* JOIN capabilities in SELECT, FROM, and WHERE clauses
* Add support for Decimals
### v0.3
* GROUP BY, ORDER BY, LIMIT
### Beyond
* Streaming sources and sinks
* Stdin as a Table (pipe in a cat/tail)
* CREATE, SELECT INTO, INSERT, UPDATE
* Console to allow query building auto-completion
* Start thinking about performance, maybe
* Flexible formats beyond CSV (JSONL, Common Log Format, etc)
* Integration with NuShell
* etc
