# Function to create a simple Go project
create_simple_project() {
    mkdir -p "$project_name"
    cd "$project_name" || exit
    go mod init "$project_name"
    touch main.go
    echo "Simple Go project created in folder: $project_name"
}

# Function to create an API Go project
create_api_project() {
    mkdir -p "$project_name"
    cd "$project_name" || exit
    go mod init "$project_name"

    # Create the necessary folders
    mkdir -p routes models repositories services configs controllers

    touch main.go
    echo "API Go project created in folder: $project_name"
}

# Main script execution
echo "Enter the project name (e.g., my-cool-project):"
read -r project_name

echo "Select project type (simple/api):"
read -r project_type

# Validate and create the project
case "$project_type" in
    simple)
        create_simple_project
        ;;
    api)
        create_api_project
        ;;
    *)
        echo "Invalid project type. Please choose 'simple' or 'api'."
        ;;
esac
