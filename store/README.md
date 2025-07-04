# README

## Endpoints

- http://127.0.0.1:3000/products
- http://localhost:3000/session/new

## Init Ruby 3

```bash
# make sure use ruby 3
eval "$(rbenv init -)"

source ~/.zshrc 
```

## Run app

```bash

cd store

bin/rails server
```

## Add new model

```bash

bin/rails generate model Product name:string
```

## Run DB migration

```bash
bin/rails db:migrate
```

## Ruby console

```bash
bin/rails console
```

## Run Unit test

```bash
# run all UTs
bin/rails test

# run test with name
bin/rails test test/models/product_test.rb
```

## Other cmd

```bash

# generate a mailer with the following command:
bin/rails g mailer Product in_stock
```

## Ref

- https://guides.rubyonrails.org/getting_started.html#creating-the-blog-application