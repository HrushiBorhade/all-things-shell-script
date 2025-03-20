#!/bin/bash

# Deploy Node.js and Postgres using docker-compose

code_clone() {
    echo "Cloning the Django app..."
    if [ -d "docker_compose_example" ]; then
        echo "The code directory already exists. Skipping clone."
    else
        git clone https://github.com/HrushiBorhade/docker || {
            echo "Failed to clone the code."
            return 1
        }
    fi
}

install_requirements() {
    echo "Installing dependencies..."
    sudo apt-get update && sudo apt-get install -y docker.io docker-compose || {
        echo "Failed to install dependencies."
        return 1
    }
}

required_restarts() {
    echo "Performing required restarts..."
    sudo chown "$USER" /var/run/docker.sock || {
        echo "Failed to change ownership of docker.sock."
        return 1
    }

    # Uncomment the following lines if needed:
    # sudo systemctl enable docker
    # sudo systemctl restart docker
}

deploy() {
    echo "Building and deploying the app..."
    docker-compose up || {
        echo "Failed to build and deploy the app."
        return 1
    }
}

# Main deployment script
echo "********** DEPLOYMENT STARTED *********"

# Clone the code
if ! code_clone; then
    cd docker_compose_example || exit 1
fi

# Install dependencies
if ! install_requirements; then
    exit 1
fi

# Perform required restarts
if ! required_restarts; then
    exit 1
fi

# Deploy the app
if ! deploy; then
    echo "Deployment failed. Mailing the admin..."
    # Add your sendmail or notification logic here
    exit 1
fi

echo "********** DEPLOYMENT DONE *********"
