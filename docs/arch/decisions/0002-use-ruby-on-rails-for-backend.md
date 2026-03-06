# 2. Use Ruby on Rails for (CRUD) Backend

Date: 2026-03-06

## Status

Accepted

## Context

There are many good, general purpose programming languages for doing backend web development. It was between Ruby and Kotlin for reasons.

We wanted to prefer Kotlin for for scalability, maturity<sup><a id="fnr.1" class="footref" href="#fn.1" role="doc-backlink">1</a></sup>, and ease of containerization reasons.

## Decision

We will use Ruby for the development of our TaskMan prototype for a combination of speed and proficiency of reasons.

## Consequences

95% sure that there will be no short-term consequences because this decision creates alignment with the TaskMan frontend.

We do not foresee this technology choice creating friction with the development team because @bgustafson shared that his team prototyped with Rails, later switching to Kotlin.

WRT the Kotlin switch, although I do not know the team's reasons for switching, I suspect it could be because there exists a clearer, better documented, and overall more prescriptive way to scale applications built with tech (e.g., JVM) that [FAANG](https://en.wikipedia.org/wiki/Big_Tech#FAANG) prefers.

## Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> In this context (and IMO), /mature/ by virtue of being a Java-inspired language that frames its biggest strengths as learnings from well-known Java
mistakes. e.g., the [billion-dollar mistake](https://en.wikipedia.org/wiki/Null_pointer#History).
