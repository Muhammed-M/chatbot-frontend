# Docker Compose

This frontend is served by Nginx. In Docker Compose, Nginx also proxies frontend API calls:

- `/api/chat` -> `backend:7860/chat`
- `/api/feedback` -> `backend:7860/feedback`

## Build and run locally

1. Copy `.env.example` to `.env`.
2. Edit `.env` and set the real Docker Hub image names.
3. Run:

```powershell
docker compose up --build
```

Open:

```text
http://localhost:8080
```

## Build and push the frontend image

```powershell
docker compose build frontend
docker compose push frontend
```

The backend image must already exist locally or be available from Docker Hub using the `BACKEND_IMAGE` value in `.env`.
