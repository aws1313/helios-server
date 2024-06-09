CONTAINER_ALREADY_STARTED="./CONTAINER_ALREADY_STARTED_PLACEHOLDER"

echo "test"

if [ ! -e $CONTAINER_ALREADY_STARTED ]; then
    touch $CONTAINER_ALREADY_STARTED
    echo "-- First container startup --"
    sh ./reset.sh
else
    echo "-- Not first container startup --"
fi

echo "hi"

python ./manage.py runserver 0.0.0.0:8000
