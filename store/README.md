# README

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