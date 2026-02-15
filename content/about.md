---
title: "About"
description: "About Building the Web and its author."
layout: "about"
---

**Building the Web** is a book about the history of web architecture. The modern web is unparalleled as a tool for information exchange. It is also one of the largest engines for economic growth ever seen. The infrastructure that the modern web is built on was not the result of one single, overseeing blueprint. Instead, it is a patchwork of contributions from people working at companies or in their own capacity as hobbyists. Much of the foundational work was done in the public domain, completely in the open.

Many of the most important ideas in web architecture have become so ubiquitous that many engineers don't think about them at all. Load balancers, reverse proxies, caches, etc. may seem obvious now, but that wasn't always the case. Each major building block in modern web architecture was the result of an innovation, often made by engineers under specific constraints, trying to solve a specific problem.

This book aims to trace many of those ideas to their start. Each chapter tries to tell the story of a specific time period and technological landscape of the web. I'll start by outlining the paradigms that people were working within at the time, the problems being faced, and how a solution was created that eventually became so fundamental that it seems completely obvious in retrospect. Each chapter will detail the constraints faced, the trade-offs considered, and major innovations created.

**Building the Web** is written for engineers. Experienced engineers will enjoy reading about the system design decisions being made with the constraints of the time. If you're earlier in your career, I hope that reading about major innovations and paradigms in our industry will help you gain an appreciation for the process of designing lasting systems. Non-technical readers will also gain from the historical perspectives, but may wish to skip over or skim the more technical sections.

## How This Site Is Built

Given the subject matter, it feels right to say a few words about how this site is hosted.

I deliberately chose not to use a newsletter platform or hosted publishing service. I want to own the content and have it live on in perpetuity, regardless of which businesses succeed or fail. If I'd started this project several years ago on hosted WordPress, I might be regretting that decision right now.

The site is a static site generated with [Hugo](https://gohugo.io/) and served from S3 and CloudFront. All content is tracked in a public GitHub repository: [paulosman/buildingtheweb.dev](https://github.com/paulosman/buildingtheweb.dev). Contact and newsletter sign-up forms are powered by [SignalForm](https://signalform.io), an indie SaaS app developed by myself and my wife, Meg. It stores email addresses in a PostgreSQL / RDS database and uses a small Go application for processing requests and performing email verification. Your data won't pass through a myriad of third-party SaaS vendors and it will never be shared. Email updates will likely be sent via a transactional email provider over SMTP, but the subscriber list, content, and sending logic are all mine - not locked into a fully hosted newsletter app. If you'd prefer to skip email entirely, you can also follow along via the [RSS feed](/chapters/feed.xml).

I'm trying to follow [POSSE](https://indieweb.org/POSSE) (Publish on your Own Site, Syndicate Elsewhere) principles as much as possible, so each time I have an update, I'll publish it here first, and link to the content on social media sites, email updates and other platforms.

## LLM Use Policy

I use [Claude](https://claude.ai/) to help generate scaffolding, CSS, and placeholder text during development, but none of the actual content on this site is LLM-generated. Every word of every chapter, essay, and page is written by me.

I will never include personal information about subscribers or transcripts from interviews, conversations, or correspondence in prompts to LLM tools.
