# Prism Model Drift Loom Walkthrough

This note is the quickest way to read the extra review model in `prism-model-drift-loom`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 125 | watch |
| stress | window width | 146 | ship |
| edge | metric stability | 200 | ship |
| recovery | explainability | 171 | ship |
| stale | feature drift | 191 | ship |

Start with `edge` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`edge` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
