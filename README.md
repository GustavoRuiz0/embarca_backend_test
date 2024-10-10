
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
- [Running Tests](#running-tests)
- [Additional Information](#additional-information)

## Prerequisites

Make sure you have the following installed on your machine:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Route to use
The screen stay in

```bash
http://localhost:3000/cities
```

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

## Running Tests

This section describes how to run tests for the Embarca backend application.

### Prerequisites

Before running tests, ensure that you have Docker and Docker Compose installed on your machine.

### Running All Tests

To run all tests in the project, execute the following command:

```bash
docker-compose run web rspec
```

This will run all RSpec tests located in the `spec` directory.

### Running Individual Tests

If you want to run a specific test file, you can do so by providing the path to the test file. For example, to run the tests for the `State` model, you can use:

```bash
docker-compose run web rspec spec/models/state_spec.rb
```

Similarly, to run the tests for the `City` model:

```bash
docker-compose run web rspec spec/models/city_spec.rb
```

Controller, to run the tests for the `cities_controller`:

```bash
docker-compose run web rspec spec/controllers/cities_controller_spec.rb
```

routing, to run the tests for the  `cities_routing_spec`:

```bash
docker-compose run web rspec spec/routing/cities_routing_spec.rb
```

### Checking Test Results

After running the tests, you will see the results in the terminal, indicating which tests passed and which failed. If you encounter any failures, review the error messages for guidance on how to resolve the issues.

### Running Tests Locally (Without Docker)

If you prefer to run tests locally without Docker, you can do so by executing:

```bash
bundle exec rspec
```

Ensure that you have the necessary Ruby environment set up on your machine to run this command.
