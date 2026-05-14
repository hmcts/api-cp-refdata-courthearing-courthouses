## Repo: api-cp-refdata-courthearing-courthouses

OpenAPI-first API spec library defining the reference data interface for court houses and court rooms in the Common Platform.

**Pattern**: Pure spec-only
**OpenAPI spec version**: 3.0.0
**OpenAPI Generator version**: 7.18.0 (target 7.22.0 per upgrade cycle)
**Spring Boot version**: 4.0.1 (target 4.0.6+ per upgrade cycle)

## API Endpoint(s)

```
GET /courthouses/{court_id}
  → 200 CourtHouseResponse
  → 400 ErrorResponse
  → 401 Unauthorized
  → 403 Forbidden
  → 404 ErrorResponse
  → 500 ErrorResponse

GET /courthouses/{court_id}/courtrooms/{court_room_id}
  → 200 CourtRoom
  → 400 ErrorResponse
  → 401 Unauthorized
  → 403 Forbidden
  → 404 ErrorResponse
  → 500 ErrorResponse
```

Security: Bearer JWT auth.

## Generated Interfaces & Schema

- Schema files: schemas defined inline in `components/schemas` (no separate `.schema.json` files)
- Generated API interfaces:
  - `uk.gov.hmcts.cp.openapi.api.CourtHouseApi` — court house lookup by ID
  - `uk.gov.hmcts.cp.openapi.api.CourtRoomApi` — court room lookup by house and room ID
- Generated models:
  - `CourtHouseResponse` — court house with address and list of court rooms
  - `Address` — street address for a court
  - `CourtRoom` — individual court room within a court house
  - `ErrorResponse` — machine-readable error envelope

## Domain Models

| Model | Purpose |
|---|---|
| `CourtHouseResponse` | Full court house details: name, address, court rooms |
| `Address` | Postal address of the court house |
| `CourtRoom` | Individual court room: ID, name, within a court house |
| `ErrorResponse` | Structured error with traceId |

## Test Structure

| Class | What it validates |
|---|---|
| `OpenApiObjectsTest` | Reflection-based contract test verifying generated model fields and `CourtHouseApi`/`CourtRoomApi` interface method signatures match the spec |

## Generator Config Notes

- `@JsonInclude(NON_NULL)` is present in `additionalModelTypeAnnotations` — aligned with standard.
- OpenAPI Generator version 7.18.0 is the oldest in the estate — priority candidate for upgrade to 7.22.0.
- OpenAPI spec version is 3.0.0; target 3.1.0 for future spec revisions.

## CI/CD Deviations

Standard workflow set — no deviations: `ci-draft.yml`, `ci-released.yml`, `lint-openapi.yml`, `code-analysis.yml`, `codeql.yml`, `secrets-scanner.yml`, `publish-openapi-spec.yml`.

## Repo-Specific Notes

- Two separate API interfaces (`CourtHouseApi`, `CourtRoomApi`) — downstream service implements both controllers independently.
- Run `/openapi-spec-reviewer` when authoring or reviewing the OpenAPI spec.
