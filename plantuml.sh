
#!/bin/bash

echo $$

# Remove existing container if it exists
podman rm -f plantuml 2>/dev/null

# Start the PlantUML server using Podman
podman run -v $(pwd)/libraries:/libraries --env PLANTUML_SECURITY_PROFILE=LEGACY --name plantuml -p 6200:8080  plantuml/plantuml-server:tomcat-v1.2024.4
