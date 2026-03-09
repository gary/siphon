# README

This service acts as the (CRUD) backend for TaskMan, a lightweight task manager. 

It follows the Rails Way of development and setup, and is intended to deploy with 

My intent was to first containerize its database dependency, and then integrate both the siphon-app and siphon-db services into a separate, dedicated deployment project which would have them talking to the thunderegg service.

Effectively:

1. User would navigate to the local deployment (0.0.0.0:3000). I would have had it run on a non-privileged port so that I could simplify the deployment by not introducing a web server (initially)
1. User would perform a Task operation (e.g., list tasks)
  - GET /tasks
1. User's request would hit frontend service (thunderegg), which would query the backend service via its 


## Development

### Setup

1. Prime your development expectations by reading [Getting Started with Rails](https://guides.rubyonrails.org/getting_started.html) if you are new to Ruby on Rails and/or its approach.
1. [Install Ruby on Rails](https://guides.rubyonrails.org/install_ruby_on_rails.html)
1. Install the application's dependencies:
   - Ensure you are in the project root
   - Run `bundle install` 

### Running in development

    bin/setup
    bin/rails server

### Testing



## Architecture Decisions

We document the project's [architectural decisions](https://en.wikipedia.org/wiki/Architectural_decision) using Architecture Decision Records.
Review the [authoritative source](https://adr.github.io/) and the [ADR1](./docs/arch/decisions/0001-record-architecture-decisions.md) for background and motivation.

### Setup

We use [adr-tools](https://github.com/npryce/adr-tools) for managing ADRs in the project. Install via [Homebrew](https://brew.sh):

1. `brew bundle --file="./Brewfile"`
