# README

This service acts as the (CRUD) backend for TaskMan, a lightweight task manager. 

It follows the Rails Way of development and setup.

## Requirements

1. Docker
1. Ruby 4.0 or higher

## Running in development

For interop with the web frontend (thunderegg), the development server runs on port 3001.

1. Run `docker compose up` to bring up the database
1. Run `bin/setup`
1. Run `bin/rails server`

## Testing

1. Run `bin/rails test`

## Architecture Decisions

We document the project's [architectural decisions](https://en.wikipedia.org/wiki/Architectural_decision) using Architecture Decision Records.
Review the [authoritative source](https://adr.github.io/) and the [ADR1](./docs/arch/decisions/0001-record-architecture-decisions.md) for background and motivation.

### Setup

We use [adr-tools](https://github.com/npryce/adr-tools) for managing ADRs in the project. Install via [Homebrew](https://brew.sh):

1. `brew bundle --file="./Brewfile"`
