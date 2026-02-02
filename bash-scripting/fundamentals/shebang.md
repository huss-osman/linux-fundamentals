# The Shebang Line

## Overview
The shebang line tells Linux which interpreter should execute a script.

It must be the first line in the file.

---

## Key Concepts

- Required for direct execution
  
- Defines interpreter selection
  
- Affects portability

---

## Common Shebangs

```bash
#!/bin/bash
#!/usr/bin/env bash
```

## Key Takeaways

- Always include a shebang

- `/usr/bin/env` bash improves portability

- Missing shebangs cause execution failures

## Reflection
Understanding the shebang explained why scripts failed even with correct permissions.
