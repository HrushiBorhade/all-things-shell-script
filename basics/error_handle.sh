
create_directory() {
    mkdir demo
}

if ! create_directory;
then
    echo "The directory already exists and hence code will be exited"
    exit 1
fi


echo "Created new demo directory"