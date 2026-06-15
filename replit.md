# BLACK PANTHER MD

A powerful multi-device WhatsApp bot built on Node.js using the Baileys v7 library. Developed by GuruTech.

## Project Overview

BLACK PANTHER MD is a feature-rich WhatsApp automation platform for groups and personal use. It provides AI-powered responses, media tools, group management, auto-features, and more.

## Getting Started

1. Get a Session ID from https://pantherr-session.onrender.com
2. Set your `SESSION_ID` environment variable (via Secrets)
3. Optionally configure `OWNER_NUMBER`, `BOT_NAME`, `OWNER_PREFIX`, and other vars
4. Run the app — it will connect to WhatsApp automatically

## Key Environment Variables

| Variable | Description | Default |
|---|---|---|
| `SESSION_ID` | WhatsApp session ID (format: `GURU~...`) | Required |
| `OWNER_NUMBER` | Owner's WhatsApp number with country code | `254105521300` |
| `OWNER_NAME` | Bot owner display name | `GuruTech` |
| `BOT_NAME` | Bot display name | `BLACK PANTHER MD` |
| `BOT_PREFIX` | Command prefix character | `.` |
| `MODE` | `public` or `private` | `public` |
| `TIME_ZONE` | Timezone (e.g., `Africa/Nairobi`) | `Africa/Nairobi` |
| `DATABASE_URL` | PostgreSQL URL (optional, falls back to SQLite) | SQLite |

## Architecture

- **`index.js`** — Obfuscated main entry point; starts the Express web server + WhatsApp bot
- **`guru/`** — Core engine: config, database, handlers (connection, messages, groups), utils
- **`guruh/`** — Plugin layer: 100s of commands in categorized folders + background features
- **`guru/GuruTech/public/index.html`** — Status web UI served at port 5000

## Running Locally

The app runs on port 5000 (web status UI). The WhatsApp bot connects via Baileys.

```bash
node --no-warnings --expose-gc --max-old-space-size=512 index.js
```

## Build Notes

- `better-sqlite3` requires native compilation — needs `python3`, `gcc`, `gnumake` system packages
- Optional packages (`sharp`, `canvas`, `jimp`, etc.) for media features are in `optionalDependencies`
- Use `npm install --legacy-peer-deps --ignore-scripts` then rebuild native modules separately

## User Preferences

- Node.js 20.x runtime
- Use `--legacy-peer-deps` for npm installs
