# Bash Fundamentals

The Fundamentals section focuses on building a strong understanding of **Bash scripting** through structured topics and hands-on examples.

Rather than treating Bash as a collection of commands, the emphasis is on learning **how the shell thinks**, how scripts execute, and how errors occur.

---

## Learning Goals

By completing the fundamentals, the goal was to:

- Understand Bash execution flow
- Write readable and maintainable scripts
- Safely handle input, files, and errors
- Develop intuition for debugging shell scripts
- Build a foundation for CI/CD and automation tooling

---

## Topics Covered

- [Introduction to Bash](./01-introduction.md)  
  What Bash is, how it fits into Linux, and why it matters in DevOps.

- [Writing Your First Script](./02-writing-first-script.md)  
  Script structure, execution order, and basic automation.

- [The Shebang Line](./03-shebang.md)  
  How Linux chooses interpreters and why portability matters.

- [Comments](./04-comments.md)  
  Documenting intent and improving maintainability.

- [Running Scripts](./05-running-scripts.md)  
  Executable permissions, PATH, and execution contexts.

- [Variables](./06-variables.md)  
  Assignment, expansion, quoting, and common pitfalls.

- [Script Parameters](./07-parameters.md)  
  Positional parameters, argument handling, and validation.

- [Arithmetic Expansion](./08-arithmetic-expansion.md)  
  Performing calculations safely in Bash.

- [Conditionals](./09-conditionals.md)  
  Decision-making using exit codes and test expressions.

- [Loops](./10-loops.md)  
  Repeating operations efficiently with `for` and `while`.

- [Functions](./11-functions.md)  
  Structuring scripts and reducing duplication.

- [User Input](./12-user-input.md)  
  Interactive input and validation strategies.

- [Piping and Redirection](./13-piping-and-redirection.md)  
  stdin, stdout, stderr, and data flow between commands.

- [Exit Codes](./14-exit-codes.md)  
  Signalling success and failure in scripts and pipelines.

- [Shell Options (`set`)](./15-set-options.md)  
  Writing safer scripts with strict execution modes.

- [Environment Variables & PATH](./16-environment-and-path.md)  
  Environment inheritance and command discovery.

- [Working with Files](./17-working-with-files.md)  
  File checks, safe reads/writes, and defensive automation.

---

## How to Use These Notes

Each topic follows the same structure:

- Overview of the concept
- Core ideas and behaviour
- Relevant syntax or commands
- Practical examples
- Key takeaways
- Personal reflection

This consistency helps reinforce understanding and makes revisiting topics easier.

---

## Next Steps

After completing fundamentals, concepts are reinforced through **Bash Battle Arena**, which focuses on applying knowledge in realistic scripting scenarios.

➡️ [Go to Bash Battle Arena](../bashbattlearena)
