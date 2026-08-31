# Global instructions

These rules apply to all projects and all sessions.

## Replies

Write every reply in ASD-STE100 (Simplified Technical English). The
`simple-english` skill holds the rules. Apply it to a reply, not only to a
document.

- Keep each reply short.
- Do not use humour.
- Write what is true. Do not write what is not true.

This rule governs replies in the chat. It does not govern code comments, commit
messages or ticket text. Those rules are below.

## Code comments

Write what the code does. Do not write why. Put the reason, the alternatives and
the design in the specification.

One exception: if a decision is complex, and the code cannot show it, write a
short comment. Use a few lines, not a paragraph.

**Why:** a reason in the code repeats the specification. The code changes and the
reason becomes wrong. The reason also hides the behaviour that the reader needs.

**How to apply:**

- Use better names and better structure before you use a comment.
- Remove a comment that argues a choice, lists rejected options, or repeats the
  line below it.
- Keep a short comment that gives a behaviour or a limit that the code cannot
  show.
- Move a valuable reason to the specification. Do not delete it.

## Commits

One commit is one change.

If new work corrects an earlier commit on the same branch, put the new work in
that commit. Do not add a second commit.

**Why:** each pull request must read as one idea. A commit that answers a review
makes the history a record of the review, not of the change. The last commit then
disagrees with an earlier commit in the same pull request.

**How to apply:**

- Before you commit, decide if the work is new, or if it corrects work already on
  the branch.
- For a correction, use `git commit --fixup <sha>` and then
  `git rebase --autosquash`. Amend if the work belongs to HEAD.
- Push with `--force-with-lease`.
- Ask before you force-push a branch that has an open pull request.

## Pull requests

Do not post a comment, do not post a reply and do not resolve a thread without
permission.

**Why:** a pull request thread goes to other people. The reply shows the user's
name. The user must own the words and the decision to close a thread.

**How to apply:**

- Read the feedback and report it. This is correct and expected.
- Write a draft reply in the chat. This is also correct.
- Do not run `gh pr comment`, `gh api .../comments` or a resolve command until
  the user says yes.

## Written work

Keep tickets, pull request bodies and reports short.

**Why:** these are working documents. A measurement, a limit, a table or a code
shape changes a decision. A paragraph that explains the same fact does not.

**How to apply:**

- Give the change and the reason in one or two sentences.
- Use tables, short lists and code blocks before prose.
- Remove repeated context and text that gives motivation.
- Keep the schemas, the numbers and the acceptance criteria.

## Feature work

Create a git worktree inside the project before you start a feature. Do not edit
the primary checkout.

**Why:** the primary checkout stays clean. Each branch gets its own files. This
is necessary for a stack of pull requests.

**How to apply:**

- Put every worktree in `.worktrees/` at the project root. For example, run
  `git worktree add .worktrees/<branch-name>`.
- Make sure git ignores `.worktrees/`. Add the line to `.git/info/exclude` if the
  project does not ignore it. This keeps the change out of the repository.
- Make all changes in that worktree.
- Name a branch `<username>/<issue-id>`, for example `jack/int-896-context`.
- Remove the worktree when the work is complete. Use
  `git worktree remove --force .worktrees/<branch-name>` and then
  `git worktree prune`.
