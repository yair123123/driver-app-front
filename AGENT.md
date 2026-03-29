# AGENTS.md

## Purpose

This project must follow a strict, maintainable, production-oriented architecture.

The primary goals are:

- clear separation of concerns
- predictable state management
- minimal UI logic
- scalable feature-based structure
- testable business logic
- consistency across the codebase

This repository uses:

- Flutter
- Riverpod
- Clean Architecture
- feature-first folder structure

---

## Core Architecture Rules

### 1. Layer separation is mandatory

Each feature should be separated into layers:

- `domain`
- `data`
- `presentation`

Do not mix responsibilities between layers.

### 2. Domain layer is pure

The domain layer contains:

- entities
- repository contracts
- use cases
- domain enums / value objects when needed

Rules:

- no Flutter imports
- no UI logic
- no HTTP logic
- no database logic
- no provider-specific implementation details
- no DTOs in domain

Domain must remain framework-light and business-oriented.

### 3. Data layer implements domain contracts

The data layer contains:

- models
- DTOs
- mappers
- repository implementations
- local/remote data sources

Rules:

- models are not entities
- every model must map cleanly to domain entities
- repository implementations must implement domain repository contracts
- data sources should stay focused and not contain business orchestration

### 4. Presentation layer is thin

The presentation layer contains:

- screens
- widgets
- controllers / notifiers / providers
- UI-facing state classes

Rules:

- widgets should not contain business logic
- screens should orchestrate UI only
- async flows should be handled in controllers/providers, not directly in widgets
- keep build methods clean and readable
- avoid large widgets with too many responsibilities

---

## Folder Structure Expectations

Prefer this structure:

```text
lib/
  core/
  features/
    feature_name/
      domain/
        entities/
        repositories/
        usecases/
      data/
        models/
        mappers/
        datasources/
        repositories/
      presentation/
        controllers/
        providers/
        screens/
        widgets/
        state/
        
```
Additional folders may exist only when they clearly improve maintainability.

Riverpod Rules
1. Riverpod is the single state-management solution

Do not introduce other state-management approaches unless there is a very strong reason.

2. Providers must have clear responsibility

Examples:

repository provider -> exposes repository implementation
use case provider -> exposes use case
controller/notifier provider -> handles UI/business flow for one screen or flow
derived provider -> computes state from other providers

Avoid providers that do too many unrelated things.

3. Do not put side effects in widget build

Forbidden patterns:

modifying providers during build
triggering writes during build
business actions directly inside widget tree evaluation

Use:

controller methods
callbacks
listeners
lifecycle-aware mechanisms
4. Async state must be explicit

Use clear async state handling.

Prefer predictable patterns for:

loading
success
error
empty state

Do not hide async complexity inside widgets.

5. Derived state should be derived, not duplicated

If a boolean can be computed from existing state, compute it instead of storing it separately.

Examples:

isAuth should usually come from user != null
hasActiveRide should usually come from activeRide != null

Avoid duplicated truth sources.

State Design Rules
1. Distinguish between domain state and runtime/UI state

Examples:

Domain/business state
current user
active ride
selected station
settings that represent real user preferences
Runtime/UI state
loading
busy reason
permission state
force update flag
temporary overlay visibility
transient error messages

Do not confuse them.

2. One object should not mix unrelated responsibilities

If a class contains both business entities and transient UI flags, consider splitting it.

3. Prefer immutable state

State classes should be immutable.

Use:

final fields
copyWith
freezed where useful

Avoid mutable entities and mutable app state.

Entity / Model / DTO Rules
1. Entities represent business meaning

Entities should be stable, clean, and independent from transport/storage.

Examples:

User
Ride
Station
Settings
2. Models belong to data layer only

Models are for:

API parsing
local persistence
serialization/deserialization

Never leak data models into presentation if a domain entity should be used instead.

3. Mapping must be explicit

Use clear mapping methods between:

DTO/model -> entity
entity -> model when required

Avoid hidden implicit transformations.

Use Case Rules
1. Use cases should represent business actions

Examples:

LoginUseCase
FetchActiveRideUseCase
UpdateSettingsUseCase
AcceptRideUseCase
2. One use case = one meaningful responsibility

Do not create giant god-use-cases.

3. Use cases should not know about Flutter/UI

They may depend on repository contracts, but not on widgets, BuildContext, or UI concerns.

Repository Rules
1. Domain defines repository contracts

Repository interfaces live in domain.

2. Data layer implements repositories

Concrete implementations live in data.

3. Repositories coordinate data sources

Repositories may combine:

remote source
local cache
mapping logic

But they should not become a dumping ground for unrelated business decisions.

UI Rules
1. Widgets should be small and composable

If a widget becomes too large, split it.

2. Keep screens readable

A screen should quickly reveal:

what state it watches
what actions it triggers
what major UI sections it renders
3. Reusable UI belongs in shared widgets only if truly shared

Do not over-abstract too early.

4. Styling should be centralized

Use project theme/constants/extensions consistently.

Do not hardcode spacing, text styles, or colors repeatedly if project conventions already provide them.

Naming Conventions
General

Use names that reveal responsibility clearly.

Prefer:

SettingsRepository
GetActiveRideUseCase
RideController
RideState
RideRemoteDataSource
RideModel

Avoid vague names like:

Manager
Helper
Utils for business logic containers
DataClass
Handler unless it truly handles one narrow thing
Booleans

Boolean names should read clearly:

isDarkMode
isAuthenticated
hasActiveRide
canSubmit

Avoid ambiguous names.

Methods

Method names should reflect intent:

fetch... for retrieval
save... for persistence
update... for mutation
watch... for streams/reactive exposure
clear... for reset/removal
Error Handling
1. Do not silently swallow errors

Errors must be either:

handled properly
converted into domain/presentation-friendly failures
surfaced intentionally
2. Keep error mapping consistent

API/storage errors should be translated into app-specific failure structures when appropriate.

3. UI should show user-friendly states

Do not expose raw technical exceptions directly to users.

Testing Expectations
1. Domain logic should be easy to test

Use cases and pure logic should not depend on Flutter UI.

2. Controllers/notifiers should be testable

Keep dependencies injectable.

3. Prefer testing behavior over implementation details

Tests should validate:

input/output behavior
state transitions
repository interactions when relevant
Code Style Expectations
1. Favor readability over cleverness

Code should be easy to scan and maintain.

2. Keep methods focused

If a method does too many things, split it.

3. Avoid deep nesting

Prefer early returns and smaller functions.

4. Keep files organized

Public API near top, helpers lower when possible.

5. Do not introduce abstractions without payoff

Every abstraction should justify its existence.

When Adding New Features

For every new feature:

define the business entity/entities
define repository contract if needed
create use cases for business actions
implement repository/data sources in data layer
expose orchestration through Riverpod providers/controllers
keep widgets focused on rendering and interaction

Before adding new classes, check whether the responsibility already belongs somewhere existing.

What To Avoid

Do not:

put business rules in widgets
put API models in domain
duplicate derived state
create multiple sources of truth for the same information
mutate state objects directly
create god classes
add architecture-breaking shortcuts “just for now”
mix runtime flags with core entities without clear reason
bypass repository contracts from presentation
Preferred Decision Rules

When unsure, prefer:

explicit over implicit
simple over clever
immutable over mutable
derived state over duplicated state
composition over giant classes
clear boundaries over convenience hacks
Refactoring Guidance

When refactoring existing code:

preserve behavior
improve separation of concerns
reduce duplication
remove redundant state
rename unclear classes and methods
keep architecture stricter after the refactor than before

Do not perform wide refactors unless they clearly improve maintainability.

Output Expectations For AI Changes

When making changes in this repository:

follow the existing architecture strictly
do not invent a new pattern when an existing one already fits
keep naming aligned with project conventions
prefer minimal, clean changes
explain architectural choices briefly when needed
avoid unnecessary file churn
do not rewrite unrelated code

If there are multiple valid options, choose the one that best preserves consistency with the existing codebase.