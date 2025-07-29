
#!/bin/bash

echo $$

# Remove existing container if it exists
docker rm -f plantuml 2>/dev/null

# Start the PlantUML server using Docker
docker run -v $(pwd)/libraries:/libraries --env PLANTUML_SECURITY_PROFILE=LEGACY --name plantuml -p 6200:8080  plantuml/plantuml-server:tomcat
