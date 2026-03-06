# 1. Prefer Local (Rails) Development

Date: 2025-08-21

## Status

Accepted

## Context

Wanted to prefer container development over local development for easy setup reasons.

Ended up preferring initial native (AKA local) development with Rails for speed reasons.
- devcontainers are supported via rails-new, and are VSCode-friendly and (IMO) too prescriptive 
- Would have focused on switching development approach to container first during infra building (i.e., after app development)

## Decision

Went with native development because, as an OG Rubyist, the Rails framework still "just works" in the most intentional way.

## Consequences

This decision creates adds cognitive complexity because with development because (IMO) it requires developers to take extra, custom (albeit small) setup steps on account such as installing Ruby locally (via a version manager), then running Bundler.

This decision does impact production because Rails has had first class support for Docker since [Rails 7.1](<https://guides.rubyonrails.org/7_1_release_notes.html>).
