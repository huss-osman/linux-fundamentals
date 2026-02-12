# User Input

## Overview
Bash scripts can accept input from the user at runtime using the `read` command or by passing parameters when executing the script.
User input allows scripts to become interactive and flexible instead of using fixed values.

---

## Key Concepts

- `read` captures input from **stdin**

- Input is stored in a variable

- Scripts pause execution until input is provided

- Parameters can replace interactive input

- Input should be validated in real-world scripts

---

## Basic `read` Syntax

```bash
read variable_name
```

### Example:

```bash
echo "What is your name?"
read name
echo "Hello, $name"
```

---

## Example: Function with User Input

```bash
#!/bin/bash

greet_user() {
  echo "What is your name?"
  read name
  echo "Hello, $name!"
}

greet_user
```

### Output

```bash
What is your name?
Osman
Hello, Osman!
```

---

## Using Parameters Instead of Prompts
Scripts can also accept input as **parameters**.

```bash
#!/bin/bash

greet_person() {
  local name="$1"
  echo "Hello, $name!"
}

greet_person "Osman"
```

### Output

```bash
Hello, Osman!
```

---

## Combining Parameters and Interactive Input
This approach allows the script to:

- Use a parameter if provided

- Ask the user if no parameter is given

```bash
#!/bin/bash

greet() {
  local name=

  if [ $# -eq 0 ]; then
    echo "What is your name?"
    read name
  else
    name="$1"
  fi

  echo "Hello, $name!"
}

greet
```

### Output (no parameter)

```bash
What is your name?
Osman
Hello, Osman!
```

---

### Output (with parameter)

```bash
#!/bin/bash

greet() {
  local name=

  if [ $# -eq 0 ]; then
    echo "What is your name?"
    read name
  else
    name="$1"
  fi

  echo "Hello, $name!"
}

greet "Osman"
```

### Output

```bash
Hello, Osman!
```

---

## Key Takeaways

- `read` allows interactive input

- Scripts pause until input is provided

- Parameters can replace prompts

- Combining both makes scripts more flexible

- Interactive input is avoided in automated pipelines

---

## Reflection
User input highlighted the difference between interactive scripts and automated ones.
Understanding when to prompt the user versus using parameters is essential for writing practical, production-ready scripts.
