# Pascal Calculator

A simple calculator built with **Free Pascal** as a learning project for exploring Pascal and fundamental software engineering concepts.

The project is developed incrementally using **Test-Driven Development (TDD)**.

## Goals

The primary goal is not to build a feature-rich calculator, but to use a small and understandable application to explore concepts such as:

- Pascal syntax and type system
- Functions and procedures
- Variable scope
- Units and multi-file projects
- Exception handling
- Stack unwinding
- Dynamic memory allocation
- Resource management
- Records, classes, and interfaces
- Unit testing with FPCUnit
- Test-Driven Development
- Basic software design principles

## Development Approach

Development follows the TDD cycle:

**Red → Green → Refactor**

1. Write a failing test that describes the desired behavior.
2. Write the minimum implementation required to make the test pass.
3. Refactor the code while keeping all tests green.

## Project Structure

```text
pascal-calculator/
├── src/
│   ├── calculator.pas
│   └── main.pas
├── tests/
│   ├── test_calculator.pas
│   └── run_tests.pas
├── .gitignore
└── README.md
```

## Requirements

- Free Pascal Compiler (FPC)
- FPCUnit
- Git

VS Code can be used as the editor, but the project is compiled directly with the Free Pascal compiler.

## Running the Tests

From the project root:

```bash
fpc -Fusrc tests/run_tests.pas
```

Then run the generated test executable.

On Linux/macOS:

```bash
./tests/run_tests
```

On Windows:

```powershell
.\tests\run_tests.exe
```

## Status

Work in progress.

The project intentionally starts small and will evolve as new Pascal and software engineering concepts are introduced.

## License

This project is intended for learning and experimentation.