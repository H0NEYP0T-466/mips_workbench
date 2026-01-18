# Contributing to MIPS Workbench

First off, thank you for considering contributing to MIPS Workbench! 🎉

This document provides guidelines for contributing to this project. Following these guidelines helps communicate that you respect the time of the developers managing and developing this open-source project.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [How Can I Contribute?](#how-can-i-contribute)
- [Style Guidelines](#style-guidelines)
- [Commit Message Guidelines](#commit-message-guidelines)
- [Pull Request Process](#pull-request-process)

## 📜 Code of Conduct

This project and everyone participating in it is governed by our [Code of Conduct](./CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to the project maintainers.

## 🚀 Getting Started

### Prerequisites

- A MIPS simulator (MARS or SPIM)
- Java Runtime Environment (for MARS)
- Git for version control
- Basic understanding of MIPS Assembly language

### Setting Up Your Development Environment

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/mips_workbench.git
   cd mips_workbench
   ```
3. **Create a branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```
4. **Install MIPS simulator** (if not already installed)

## 🤝 How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include as many details as possible:

- **Use a clear and descriptive title**
- **Describe the exact steps to reproduce the problem**
- **Provide specific examples** (code snippets, screenshots)
- **Describe the behavior you observed** and what you expected to see
- **Include details about your environment**:
  - MIPS simulator version (MARS/SPIM)
  - Operating system
  - Java version (if using MARS)

Use the [Bug Report template](.github/ISSUE_TEMPLATE/bug_report.yml) when creating issues.

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion:

- **Use a clear and descriptive title**
- **Provide a detailed description** of the suggested enhancement
- **Explain why this enhancement would be useful**
- **List any alternatives you've considered**

Use the [Feature Request template](.github/ISSUE_TEMPLATE/feature_request.yml) when creating enhancement suggestions.

### Contributing Code

#### Adding New MIPS Programs

1. Create a new `.asm` file with a descriptive name
2. Include clear comments explaining:
   - Purpose of the program
   - Algorithm/logic used
   - Input/output specifications
   - Any special registers or memory usage
3. Test your program thoroughly in a MIPS simulator
4. Update README.md if adding a significant new feature or program

#### Improving Existing Programs

1. Maintain backward compatibility when possible
2. Improve code comments and documentation
3. Optimize only if it improves clarity or performance significantly
4. Test changes thoroughly

## 🎨 Style Guidelines

### MIPS Assembly Code Style

Follow these conventions for consistency:

1. **Comments**:
   ```mips
   # Use hash for single-line comments
   # Explain what the code does, not just repeat the instruction
   ```

2. **Indentation**:
   - Use consistent indentation (4 spaces or 1 tab)
   - Align instructions for better readability
   ```mips
   .data
   msg:    .asciiz "Hello"
   
   .text
   main:
       li      $v0, 4          # print string syscall
       la      $a0, msg        # load address of string
       syscall                 # make the call
   ```

3. **Labels**:
   - Use descriptive names
   - Place labels at the start of the line
   - Follow with a colon
   ```mips
   loop_start:
       # code here
   ```

4. **Data Section**:
   - Group related data together
   - Add comments explaining data purpose
   ```mips
   .data
   # User input buffer
   buffer:     .space 256
   
   # Output messages
   prompt:     .asciiz "Enter value: "
   result:     .asciiz "Result: "
   ```

5. **Register Usage**:
   - Follow MIPS calling conventions
   - Document which registers are used and why
   - Save and restore registers as needed

### Documentation Style

- Use clear, concise language
- Include code examples where helpful
- Keep line length reasonable (80-100 characters)
- Use Markdown formatting consistently

## 📝 Commit Message Guidelines

Write clear and meaningful commit messages:

### Format

```
<type>: <subject>

<body (optional)>

<footer (optional)>
```

### Types

- **feat**: New feature or program
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code style changes (formatting, indentation)
- **refactor**: Code refactoring
- **test**: Adding or updating tests
- **chore**: Maintenance tasks

### Examples

```
feat: Add bubble sort implementation in MIPS

Implemented bubble sort algorithm with user input.
Includes error handling for invalid array sizes.
```

```
fix: Correct register preservation in LAB_3_TASK#2.asm

Fixed issue where $s registers were not properly saved
before function calls, causing incorrect results.
```

```
docs: Update installation instructions in README

Added detailed steps for installing MARS on Windows.
```

## 🔄 Pull Request Process

1. **Update your fork** with the latest changes from upstream:
   ```bash
   git remote add upstream https://github.com/H0NEYP0T-466/mips_workbench.git
   git fetch upstream
   git merge upstream/main
   ```

2. **Ensure your code works**:
   - Test in MARS or SPIM
   - Verify no syntax errors
   - Check that existing programs still work

3. **Update documentation**:
   - Update README.md if needed
   - Add comments to your code
   - Update folder structure if you added new directories

4. **Create a Pull Request**:
   - Use a clear title describing your changes
   - Fill out the PR template completely
   - Link any related issues
   - Provide context and motivation for changes

5. **Respond to feedback**:
   - Address review comments promptly
   - Make requested changes
   - Ask questions if anything is unclear

6. **PR Checklist**:
   - [ ] Code follows style guidelines
   - [ ] Comments and documentation added
   - [ ] Tested in MIPS simulator
   - [ ] No breaking changes (or clearly documented)
   - [ ] README.md updated if needed
   - [ ] Commit messages follow guidelines

## 🧪 Testing Guidelines

Before submitting your contribution:

1. **Test in MARS**:
   ```bash
   java -jar Mars.jar your_program.asm
   ```

2. **Test in SPIM** (if available):
   ```bash
   spim -file your_program.asm
   ```

3. **Test edge cases**:
   - Empty input
   - Maximum/minimum values
   - Invalid input
   - Boundary conditions

4. **Verify output**:
   - Check console output
   - Verify register values
   - Confirm memory state

## 📚 Additional Resources

- [MIPS Reference Card](https://inst.eecs.berkeley.edu/~cs61c/resources/MIPS_Green_Sheet.pdf)
- [MARS Documentation](http://courses.missouristate.edu/kenvollmar/mars/)
- [SPIM Documentation](http://spimsimulator.sourceforge.net/)
- [MIPS Assembly Programming Tutorial](https://www.youtube.com/watch?v=u5235KN0pOo)

## ❓ Questions?

Feel free to:
- Open an issue for discussion
- Reach out to maintainers
- Check existing documentation and issues first

## 🙏 Thank You!

Your contributions make this project better for everyone in the MIPS learning community. We appreciate your time and effort!

---

Happy coding! 🚀
