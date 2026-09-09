# AGENTS.md

## General

* Be concise and action-oriented.
* Do not narrate routine steps.
* Avoid repeating information already established in the conversation or repository.
* Prefer the smallest change that fully solves the task.
* Do not modify unrelated code.
* Preserve existing architecture, conventions, APIs, and style unless the task requires otherwise.
* Ask questions only when a material ambiguity cannot be resolved from the repository or task context.

## Repository Exploration

* Minimize unnecessary exploration.
* Start with files, symbols, paths, errors, or commands explicitly provided by the user.
* Search narrowly before broadening scope.
* Do not read large files in full when targeted searches or relevant sections are sufficient.
* Do not inspect generated files, dependencies, build artifacts, or vendored code unless necessary.
* Prefer concise command output.

## Implementation

* Understand the affected code before editing it.
* Reuse existing abstractions and patterns where practical.
* Avoid speculative refactors, cleanup, formatting, or dependency changes.
* Keep diffs small and reviewable.
* Do not add comments that merely restate the code.
* Do not add defensive complexity without a concrete need.

## Verification

* Run the narrowest useful verification first.
* Prefer affected tests, packages, modules, lint targets, or type checks over full-repository commands.
* Run broader checks only when warranted by the change.
* Avoid repeatedly running expensive commands without new information.
* When command output is large, capture it and inspect only relevant failures.

## Failures

* Diagnose failures before changing code.
* Do not repeatedly try minor variations without forming a new hypothesis.
* Distinguish failures caused by the change from pre-existing or environment-related failures.
* Report unresolved failures clearly.

## Processes

* After interrupting or abandoning a command, verify its exact process tree; terminate verified PIDs or groups with `TERM`, then `KILL` if needed, and confirm exit. Never use broad `pkill`.
* If a sandboxed process stalls or pins CPU, clean up its descendants before retrying unsandboxed. Check for leftovers before finishing.

## Communication

* During work, only surface information that materially affects the task.
* At completion, summarize:

  * what changed
  * verification performed
  * unresolved issues, if any
* Keep the final response brief unless more detail is requested.

## Efficiency

* Optimize for minimal tool calls, context usage, and token consumption without sacrificing correctness.
* Prefer deterministic inspection and targeted commands over broad exploratory reasoning.
* If the requested task is already complete, say so rather than making unnecessary changes.
