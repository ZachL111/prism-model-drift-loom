# Review Journal

I treated `prism-model-drift-loom` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 125, lane `watch`
- `stress`: `window width`, score 146, lane `ship`
- `edge`: `metric stability`, score 200, lane `ship`
- `recovery`: `explainability`, score 171, lane `ship`
- `stale`: `feature drift`, score 191, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
