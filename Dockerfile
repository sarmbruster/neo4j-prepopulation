FROM neo4j:3.1.0

# custom apoc built (move to official next release later)
RUN curl -L -o /var/lib/neo4j/plugins/apoc-3.1.0.4-SNAPSHOT.jar "https://drive.google.com/uc?export=download&id=0B0AxyUhPvHgyUU9yWTRUTTNDVTQ"

# custom spatial build (move to official after release for 3.1)
RUN curl -L -o /var/lib/neo4j/plugins/neo4j-spatial-0.24-neo4j-3.1.0-server-plugin.jar "https://drive.google.com/uc?export=download&id=0B0AxyUhPvHgyZXRfUS1oVXhWNFk"

COPY docker-entrypoint.sh /docker-entrypoint.sh