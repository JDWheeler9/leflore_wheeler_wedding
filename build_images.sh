echo "Building and Pushing Prod Image... "
docker buildx build --platform linux/arm/v8 -t jwheeler9/leflore_wheeler_wedding:latest . --push
echo "Prod Image done"
echo "Building Dev Image..."
docker build -t jwheeler9/leflore_wheeler_wedding:dev --push
echo "Dev Image done"