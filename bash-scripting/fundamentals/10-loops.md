# Loops

## Overview
Loops allow Bash scripts to repeat commands automatically.
They are essential for automation, batch processing, and handling lists of data.

---

## Key Concepts

- while loops run as long as a condition is true

- for loops iterate over a list of items or a sequence

- Loops reduce repetitive code

- Counters are often updated using arithmetic expansion

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

### Output:

```bash
Count: 1
Count: 2
Count: 3
Count: 4
Count: 5
```

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

### Output:

```bash
Fruit: apple
Fruit: banana
Fruit: orange
```

---

## for Loop Syntax

```bash
for variable in sequence
do
  # commands
done
```

### Example: Numeric for Loop

```bash
for (( i=1; i<=5; i++ ))
do
  echo "Number: $i"
done
```

### Output:

```bash
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

### Example: Looping Through an Array

```bash
fruits=("apple" "banana" "orange")

for fruit in "${fruits[@]}"
do
  echo "Fruit: $fruit"
done
```

### Output:

```bash
Fruit: apple
Fruit: banana
Fruit: orange
```

### Example: Using seq

```bash
for number in $(seq 1 5)
do
  echo "Number: $number"
done
```

### Output:

```bash
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

---

## Key Takeaways

- while loops depend on a condition

- for loops iterate over items or sequences

- Arithmetic expansion is often used to update counters

- Loops help automate repetitive tasks

- Careful loop construction prevents infinite loops

---

## Reflection
Loops demonstrated how small scripts can scale to handle repeated tasks, making automation more efficient and practical in real-world systems.
