# MMVTG — Deployment Application

A full-stack TypeScript web application for interactive video temporal grounding.

## Overview

This application provides a web interface for uploading surveillance videos, asking natural language queries, and viewing timestamped results from the MMVTG model backend.

### Features

- Video upload and preview
- Natural language query input
- PDF witness report upload (for grounded inference)
- Temporal grounding predictions with confidence scores
- Interactive confidence visualization charts
- Clip playback mode for predicted moments
- User authentication with Supabase
- Query history management

## Tech Stack

- **Framework:** React 18 + TypeScript
- **Build Tool:** Vite
- **Styling:** Tailwind CSS
- **UI Components:** shadcn/ui
- **Auth/Database:** Supabase
- **Animations:** Framer Motion
- **Charts:** Recharts

## Quick Start

```bash
# Install dependencies
npm install

# Configure environment
cp .env.example .env
# Edit .env with your Supabase credentials and backend URL

# Start development server
npm run dev
```

## Environment Variables

See `.env.example` for all required environment variables.

| Variable | Description |
|---|---|
| `VITE_SUPABASE_URL` | Supabase project URL |
| `VITE_SUPABASE_ANON_KEY` | Supabase anonymous API key |
| `VITE_BACKEND_URL` | MMVTG backend API URL (default: http://localhost:8000) |

## Available Scripts

| Command | Description |
|---|---|
| `npm run dev` | Start development server |
| `npm run build` | Build for production |
| `npm run preview` | Preview production build |
| `npm run lint` | Run ESLint |

## Deployment

Build the application and serve the `dist/` directory:

```bash
npm run build
# Serve dist/ with any static file server
```
