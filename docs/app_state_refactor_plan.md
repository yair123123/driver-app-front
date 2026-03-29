# App State Cleanup Plan (Minimal-Risk)

## Problem Summary

The repository currently mixes two different app-wide state models:

1. `lib/core/app/app_state.dart` for runtime entities (`User`, `Settings`, `Ride`).
2. `lib/features/app/presentation/states/app_state.dart` for prefs + feature-shell runtime flags.

Both were named `AppState`, which made ownership and responsibilities unclear.

## Target Boundaries

- **Domain entities**: business data (`User`, `Ride`, `Settings`, etc.).
- **Persisted prefs**: user selections/read markers that survive restarts (`AppPrefs`).
- **Runtime state**: ephemeral process flags (`AppRuntime`, e.g. busy/loading/auth flags).
- **UI-only state**: widget/view concerns (e.g. app bar config providers).

## Minimal-Risk Refactor Steps

1. Rename feature-shell composite state type to avoid collision with core app state.
2. Align `AppPrefs` entity/model/mapper fields with real usage in notifiers.
3. Keep `AppRuntime` strictly runtime-only and include the fields currently mutated by the app notifiers.
4. Keep behavior and provider APIs stable where possible.
5. Avoid introducing new screens or navigation changes.

## Deferred (Out of Scope for this pass)

- Full migration from `news_app` package imports to `driver_app` in every feature.
- Regeneration of all codegen artifacts.
- Functional redesign of bootstrap flow.
