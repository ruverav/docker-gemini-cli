# Gemini CLI Docker Wrapper

A lightweight Docker container to run Google's `gemini-cli` securely and isolated, ideal for servers or environments without an updated Node.js.

## Requirements

- Docker
- Docker Compose

## Setup

1. Clone this repository.
2. Copy the configuration template:
   ```bash
   cp .env.example .env
   ```

3. Edit the `.env` file:
* Paste your `GEMINI_API_KEY`.
* Define `DATA_PATH` with the path of the folder on your computer that you want Gemini to analyze.

## Usage

Build the image:

```bash
docker-compose build
```

Run Gemini (Interactive mode):

```bash
docker-compose run --rm gemini
```

Run Gemini (YOLO mode - without asking for confirmation, useful for scripts):

```bash
docker-compose run --rm gemini --yolo
```

### Notes

* Conversation history is saved locally in `./gemini-data`.
* To resume a previous session, use the `--resume` flag.