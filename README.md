# laravel-aliases

Terminal tool to enhance laravel artisan experience and productivity.

### Prerequisites

- Bash or Zsh shell
- PHP
- curl
- unzip

### Installation

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/migueweb/laravel-aliases/main/install.sh)"
```
## Usage

Commands have a default structure in which they take the first two letters of the original artisan command group and the first three letters of the command but there are exceptions for example commands that only take the first two letters or the first three letters of the original or others that add three extra letters at the end.

```bash
cache:clear # cache is the command group and clear is the command
ca:cle # Laravel-aliases
```

To see all the commands use `laravel-aliases` or `lases`

### execptions

Commands using only the first letter of the original artisan command

- queue: q
- make: m
- route: r

Commands using only the three first letters of the original artisan command

- schedule: sch

#### utilities

`art` is a equivalent to `php artisan`
e.g

```bash
# laravel-aliases
art --version

# artisan
php artisan --version
```

There are also commands that help you to write less code, such as these

```bash
mc Example
# php artisan make=controller ExampleController

mcr Example
# php artisan make=controller ExampleController --resource

mf Example
# php artisan make:factory ExampleFactory

mmg examples
# php artisan make:migration create_examples_table;

mrq Example
# php artisan make:request ExampleRequest

ms Example
# php artisan make:seeder ExampleSeeder

mfs
# php artisan migrate:fresh --seed

rl
# php artisan route:list

key
#php artisan key:generate
```

## Contributing

Please see [contributing.md](CONTRIBUTING.md) for details.
