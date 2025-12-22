sudo apt-get update -y
sudo apt-get install -y wget apt-transport-https gnupg lsb-release

# Add Trivy repository
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee /etc/apt/sources.list.d/trivy.list

# Install Trivy
sudo apt-get update -y
sudo apt-get install -y trivy
