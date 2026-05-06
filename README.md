# prism-model-drift-loom

`prism-model-drift-loom` is a Haskell project in ml utilities. Its focus is to create a Haskell reference implementation for drift workflows, centered on stream reduction, windowed input fixtures, and late-data behavior checks.

## Project Rationale

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Prism Model Drift Loom Review Notes

`edge` and `baseline` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Feature Set

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/prism-model-drift-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `metric stability` and `feature drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Haskell addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The same command runs the local verification path. The highest-scoring domain case is `edge` at 200, which lands in `ship`. The most cautious case is `baseline` at 125, which lands in `watch`.

## Next Improvements

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
