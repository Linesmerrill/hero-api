# hero-api

A basic rest api built in Rust

# Install

clone the repo

install the [diesel_cli]{http://diesel.rs/} with: 

`$ cargo install diesel_cli`

If you encounter any issues trying to install the diesel_cli you can try to install with the sqlite-bundled version

```
cargo install diesel_cli --no-default-features --features "sqlite-bundled"
```

create the table in your database, we will use mysql for this example: 

`$ export DATABASE_URL=mysql://user:pass@localhost/heroes`

`$ diesel setup`

<!-- then just migrate the files included in this project:

`$ diesel migration run` -->