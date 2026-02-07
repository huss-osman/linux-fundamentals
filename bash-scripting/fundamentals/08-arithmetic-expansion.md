# Arithmetic Expansion

## Overview
Bash supports basic arithmetic using arithmetic expansion.
This allows scripts to perform simple calculations directly within the shell.

---

## Key Concepts

- Bash performs **integer-only math** by default

- Arithmetic requires the special `$(( ))` syntax

- Calculations are separate from normal string operations

- Arithmetic can be done with fixed values or variables

- User input and parameters can also be used in calculations (covered in the next section)

---

## Syntax

```bash
result=$((5 + 3))
```

---

## Understanding `$(( ))`

Arithmetic expansion uses:

```bash
$(( expression ))
```

### What each part means

- `$`
Tells Bash to **expand** or evaluate the expression.

- `(( ))`
Indicates that the content inside is **arithmetic**, not a string.

So this:

```bash
result=$((num1 + num2))
```

Means:

“Take the values of num1 and num2, add them, and store the result.”

---

## Examples

### Basic addition

```bash
num1=5
num2=10

result=$((num1 + num2))

echo "The sum is $result"
```

---

### Rectangle example

```bash
length=5
width=10

area=$((length * width))
perimeter=$((2 * (length + width)))

echo "Rectangle area: $area"
echo "Rectangle perimeter: $perimeter"
```

---

## Arithmetic Expansion (With Parameters)
Arithmetic expansion also works with values passed into the script as parameters.

Parameters like `$1` and `$2` can be used inside `$(( ))` to perform calculations dynamically.

### Example

```bash
#!/bin/bash

length="$1"
width="$2"

area=$((length * width))
perimeter=$((2 * (length + width)))

echo "Rectangle area: $area"
echo "Rectangle perimeter: $perimeter"
```

### Run the script

```bash
./arithmetic.sh 8 5
```

### Output

```bash
Rectangle area: 40
Rectangle perimeter: 26
```

---

## Key Point

- Parameters are treated as numbers inside `$(( ))`

- This allows scripts to perform calculations based on user input

- Makes scripts more flexible and reusable

---

## Key Takeaways

- Arithmetic requires `$(( ))`

- `$` triggers expansion (evaluation)

- `(( ))` tells Bash to treat the content as math

- Suitable for simple integer calculations

---

## Reflection
Arithmetic expansion clarified why normal math syntax fails in Bash and how Bash distinguishes between strings and numeric expressions.
