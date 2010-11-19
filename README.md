# Togo Example App

This repository contains an example of using the Togo CMS Framework. It uses DataMapper as the ORM
and SQLite as the database. It does not contain any frontend framework dependencies.

This is just to demonstrate how you can configure your DataMapper models for use in the Togo Admin.

## Gems required to run this example app

* dm-core (1.0.2 preferred)
* dm-migrations
* dm-sqlite-adapter
* rack
* togo

Togo currently supports these Ruby HTTP servers, and needs at least one to run:

* thin
* mongrel
* webrick

## How to run the app

Simply clone this repository, install the gems listed above and switch to your cloned repo directory and type:

    togo-admin

Togo will start up on port 8080. Navigate to the admin at

    http://127.0.0.1:8080/

No content is included, but you can create it through the admin. A set of example models are included, see
the models/ folder.

More information about Togo at [the main Togo repository](http://github.com/mattking17/Togo)
