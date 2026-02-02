# Script Parameters

## Overview
Parameters allow scripts to accept input at runtime.

---

## Key Concepts

- Parameters are positional
  
- Order matters
  
- Input should be validated

---

## Common Parameters

- `$0` Script name
  
- `$1`, `$2` Arguments
  
- `$#` Argument count
  
- `$@` All arguments  

---

## Example

```bash
echo "User: $1"
echo "Env: $2"
```

## Key Takeaways

- Parameters increase flexibility

- Validation prevents runtime errors

- Scripts should fail fast

## Reflection
Parameters turned scripts into reusable tools.
