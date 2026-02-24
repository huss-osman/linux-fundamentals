# Script Parameters

## Overview
**Script parameters** allow a **Bash script** to accept input at runtime. Instead of hardcoding values directly into the script, parameters enable dynamic input to be passed when the script is executed. This makes scripts more flexible, reusable, and adaptable to different scenarios.

By using **positional parameters** such as `$1`, `$2`, and special variables like `$@` or `$#`, scripts can process user-provided arguments efficiently and support more advanced automation workflows.

---

## Key Concepts

- Parameters have 2 types (Positional & Special)
  
- Positional Parameters (`$1`, `$2`, `$3`, etc)
  
- Special Parameters (`$0`, `$#`, `$@`)
  
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

### Example

```bash
#!/bin/bash

echo "Parameter 1: $1"
echo "Parameter 2: $2"
echo "Parameter 3: $3"
echo "All Parameters: $@"
```

### Run:

```bash
./script.sh how are you
```

### Output:

```bash
Parameter 1: how
Parameter 2: are
Parameter 3: you
All Parameters: how are you
```

---

## Substitution
Parameters are substituted into commands using `$`.

### Example

```bash
#!/bin/bash

name=$1
echo "Hello, $name"
```

### Run:

```bash
./script.sh Osman
```

### Output:

```bash
Hello, Osman
```

This is called **parameter substitution** or **variable expansion**.

---

## Key Takeaways

- Parameters make scripts reusable

- Order of arguments matters

- `$@` captures all inputs

- Scripts should validate required arguments

---

## Reflection
Parameters turned scripts from one-off commands into reusable tools that accept different inputs at runtime.
