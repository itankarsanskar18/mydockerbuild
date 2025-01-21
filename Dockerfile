# Pull the official Node.js runtime image
docker pull node:21

# Create a container and set the working directory
docker run -it --name my_node_app -w /usr/src/app node:21 powershell

# Copy package.json and package-lock.json from the local directory to the container
docker cp .\package.json my_node_app:/usr/src/app/
docker cp .\package-lock.json my_node_app:/usr/src/app/

# Install the application dependencies inside the container
docker exec -it my_node_app npm install

# Copy the application code to the working directory in the container
docker cp . my_node_app:/usr/src/app/

# Expose the port (3000 in this case)
# Note: Ports are specified when running the container, e.g., -p 3000:3000

# Start the application (index.js)
docker exec -it my_node_app node index.js
