# Loops

## Overview
Loops allow Bash scripts to repeat commands automatically.
They are essential for automation, batch processing, and handling lists of data.

---

## Key Concepts

- `while` loops run **as long as a condition is true**

- `for` loops iterate over **items or sequences**

- Loops reduce repetitive code

- Counters are commonly updated using **arithmetic expansion**

- `break` and `continue` control loop flow

---

## `while` Loop Syntax

```bash
while condition
do
  # commands
done
```

### Example: Counter Loop

```bash
count=1

while [ $count -le 5 ]
do
  echo "Count: $count"
  ((count++))
done
```

### Output

```bash
Count: 1
Count: 2
Count: 3
Count: 4
Count: 5
```

---

### Example: Looping Through an Array

```bash
fruits=("apple" "banana" "orange")
index=0

while [ $index -lt ${#fruits[@]} ]
do
  echo "Fruit: ${fruits[$index]}"
  ((index++))
done
```

### Output

```bash
Fruit: apple
Fruit: banana
Fruit: orange
```

---

## `for` Loop Syntax

```bash
for variable in sequence
do
  # commands
done
```

### Example: Numeric `for` Loop

```bash
for (( i=1; i<=5; i++ ))
do
  echo "Number: $i"
done
```

### Output

```bash
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

---

### Example: Looping Through an Array

```bash
fruits=("apple" "banana" "orange")

for fruit in "${fruits[@]}"
do
  echo "Fruits: $fruit"
done
```

### Output

```bash
Fruits: apple
Fruits: banana
Fruits: orange
```

---

### Example: Using `seq`

```bash
for number in $(seq 1 5)
do
  echo "Number: $number"
done
```

### Output

```bash
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

---

## `break`
`break` **immediately exits the loop**, even if the condition is still true.

### Example: Stop Loop Early

```bash
for (( i=1; i<=5; i++ ))
do
  if [ $i -eq 3 ]
  then
    break
  fi
  echo "Number: $i"
done
```

### Output

```bash
Number: 1
Number: 2
```

---

## `continue`
`continue` **skips the current iteration** and moves to the next loop cycle.

### Example: Skip a Value

```bash
for (( i=1; i<=5; i++ ))
do
  if [ $i -eq 3 ]
  then
    continue
  fi
  echo "Number: $i"
done
```

### Output

```bash
Number: 1
Number: 2
Number: 4
Number: 5
```

---

### Example: `continue` with `while`

```bash
count=1

while [ $count -le 5 ]
do
  if [ $count -eq 3 ]
  then
    ((count++))
    continue
  fi

  echo "Count: $count"
  ((count++))
done
```

### Output

```bash
Count: 1
Count: 2
Count: 4
Count: 5
```

---

## Key Takeaways

- `while` loops depend on a condition

- `for` loops iterate over items or sequences

- Arithmetic expansion is commonly used for counters

- `break` exits a loop early

- `continue` skips the current iteration

- Careful loop design prevents infinite loops

---

## Reflection
Loops demonstrated how small scripts can scale to handle repeated tasks.
Adding `break` and `continue` showed how execution flow can be controlled precisely, making scripts safer and more flexible for real-world automation.
