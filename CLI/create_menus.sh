# Create directories
mkdir -p foods drinks snacks

# Create menu.txt files in each folder
touch foods/menu.txt drinks/menu.txt snacks/menu.txt

# Add items to foods/menu.txt
echo "fried rice" >> foods/menu.txt
echo "fried chicken" >> foods/menu.txt
echo "chicken porridge" >> foods/menu.txt

# Add items to drinks/menu.txt
echo "coffee milk" >> drinks/menu.txt
echo "oat milk" >> drinks/menu.txt
echo "ice tea" >> drinks/menu.txt

# Fetch snack data from the endpoint and add to snacks/menu.txt
curl -s "https://example.com/snacks_endpoint" >> snacks/menu.txt

# Output the directory structure
echo "Directory structure created:"
tree

echo "Script execution completed."