# Script Parameters

## Overview
Script parameters allow a Bash script to accept input at runtime.  
They make scripts reusable instead of hardcoding values.

---

## Key Concepts

- Parameters are positional  
- Order matters  
- Values are accessed using `$1`, `$2`, etc.  
- Input should be validated when possible

---

## Common Parameters

- `$0` – Script name  
- `$1`, `$2`, `$3` – Positional arguments  
- `$#` – Number of arguments  
- `$@` – All arguments  

---

## Example

```bash
#!/bin/bash

echo "Parameter 1: $1"
echo "Parameter 2: $2"
echo "Parameter 3: $3"
echo "All Parameters: $@"
```
```bash
./script.sh how are you
```

Output:

```bash
Parameter 1: how
Parameter 2: are
Parameter 3: you
All Parameters: how are you
```

---

## Substitution
Parameters are substituted into commands using $.

For example:

```bash
#!/bin/bash

name=$1
echo "Hello, $name"
```

Run:

```bash
./script.sh Osman
```

Output:

```bash
Hello, Osman
```

This is called `parameter substitution` or `variable expansion`.

---

## Key Takeaways

- Parameters make scripts reusable

- Order of arguments matters

- $@ captures all inputs

- Scripts should validate required arguments

---

## Reflection
Parameters turned scripts from one-off commands into reusable tools that accept different inputs at runtime.
