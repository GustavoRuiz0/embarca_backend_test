
# Embarca Backend Test

This repository contains the Embarca backend application, designed for handling backend operations effectively. 

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Step 1: Clone the Repository](#step-1-clone-the-repository)
  - [Step 2: Set Permissions](#step-2-set-permissions)
  - [Step 3: Build the Docker Images](#step-3-build-the-docker-images)
  - [Step 4: Start the Application](#step-4-start-the-application)
- [Stopping the Application](#stopping-the-application)
- [Troubleshooting](#troubleshooting)
- [Additional Information](#additional-information)

## Prerequisites

Make sure you have the following installed on your machine:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

### Step 1: Clone the Repository

Open your terminal and clone the repository using the following command:

```bash
git clone https://github.com/GustavoRuiz0/embarca_backend_test.git
```

Change into the project directory:

```bash
cd embarca_backend_test
```

### Step 2: Set Permissions

Make the setup script executable by running:

```bash
chmod +x config/setup_app.sh
```

### Step 3: Build the Docker Images

Build the Docker images using Docker Compose:

```bash
docker-compose build
```

### Step 4: Start the Application

Start the application with:

```bash
docker-compose up
```

Your application should now be running! You can access it at `http://localhost:3000`.

## Stopping the Application

To stop the application, use:

```bash
docker-compose down
```

## Troubleshooting

If you encounter any issues while starting the application, consider the following:

- Ensure that Docker and Docker Compose are running.
- Check for any permission issues with the `setup_app.sh` script.
- Review the Docker logs for error messages:

```bash
docker-compose logs
```