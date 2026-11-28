#!/usr/bin/env just --justfile

# Using Just: https://github.com/casey/just?tab=readme-ov-file#installation

# List all of the available commands.
default:
	just --list

# Dry-run the deploy, which checks wrangler.jsonc and bundles public/ without credentials or changes.
ci:
	bun install --frozen-lockfile
	bun wrangler deploy --dry-run
