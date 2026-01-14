# Environment Variables

## Overview
Environment variables are key-value pairs used by the operating system and applications to store configuration values. They allow programs to behave differently depending on the environment without changing the underlying code.

They are commonly used in DevOps to manage configuration, paths, and sensitive values.

---

## Key Concepts

### Key-Value Pairs
Environment variables store data in a `KEY=VALUE` format, which applications can read at runtime.

### Session Scope
Variables can exist only for the current terminal session or be made persistent across sessions.

### Configuration Without Hardcoding
Using environment variables avoids embedding configuration values directly into code, making applications more flexible and secure.

---

## Commands Practised

### `env`
Displays all environment variables available in the current session.

### `echo $VARIABLE`
Prints the value of a specific environment variable.

### `export`
Creates or modifies an environment variable for the current shell session.

---

## Reflection
Learning about environment variables helped explain how applications receive configuration values dynamically. This concept is essential when working with containers, cloud services, and CI/CD pipelines.
