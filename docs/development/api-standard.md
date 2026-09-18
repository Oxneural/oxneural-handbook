# API Standard

For REST APIs built with FastAPI or Django.

## Design

- Resource-oriented paths, plural nouns: `/invoices`, `/invoices/{id}`
- HTTP verbs carry the action. No `/getInvoice` or `/createUser`.
- Version from day one: `/v1/...`. Retrofitting versioning after you have consumers is painful.
- Consistent response shapes across every endpoint.

## Status codes

| Code | Use |
|---|---|
| `200` | Success |
| `201` | Created |
| `204` | Success, no body |
| `400` | Malformed or invalid request |
| `401` | Not authenticated |
| `403` | Authenticated, not permitted |
| `404` | Not found |
| `409` | Conflict |
| `422` | Validation failed |
| `429` | Rate limited |
| `500` | Server fault — never used for client error |

## Errors

Consistent shape, useful message, no internal detail:

```json
{
  "error": {
    "code": "validation_failed",
    "message": "The 'amount' field must be a positive number.",
    "details": [{"field": "amount", "issue": "must be > 0"}]
  }
}
```

**Never** return a stack trace, SQL fragment, internal hostname or file path to a client. That is information disclosure.

## Validation

Validate every input at the boundary — Pydantic for FastAPI, serializers/forms for Django. Validate type, range, length and format. Reject unknown fields rather than ignoring them.

## Authentication & authorisation

- Authentication on every non-public endpoint.
- **Authorisation checked per resource**, not only per route. The most common real-world API flaw is an authenticated user reading another user's records by changing an ID.
- Tokens with expiry. Credentials from environment variables.
- HTTPS only.

## Pagination

Paginate any collection that can grow. Default page size, enforced maximum, and total count where affordable. An unbounded list endpoint is a denial-of-service waiting to happen.

## Rate limiting

Apply to public and authentication endpoints at minimum. Return `429` with `Retry-After`.

## Documentation

Auto-generated OpenAPI where the framework provides it (FastAPI does). Document every endpoint: purpose, parameters, request, response, errors, auth requirement. Examples must use placeholder data — never a real key, customer or hostname.

## Logging

Log method, path, status, duration, correlation ID. **Never** log request bodies containing credentials, tokens or personal data.

## Testing

Cover: success, validation failure, unauthenticated, authorised-but-forbidden, not-found, and the boundary cases of every numeric or length constraint.
