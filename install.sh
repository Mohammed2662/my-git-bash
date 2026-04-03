#!/bin/bash
# LADB Installation Script for Git Bash Commands

# Define installation directory
INSTALL_DIR="${PREFIX}/etc/git-bash"
mkdir -p "$INSTALL_DIR"

# Copy .gitattributes file
cp .gitattributes "$INSTALL_DIR/.gitattributes"

# Copy other bash configuration files
cp .bash_profile "$INSTALL_DIR/.bash_profile"
cp .gitconfig "$INSTALL_DIR/.gitconfig"
cp git-prompt.sh "$INSTALL_DIR/git-prompt.sh"

# Make scripts executable
chmod +x "$INSTALL_DIR"/*

echo "✅ Installation completed successfully!"
echo "Files installed in: $INSTALL_DIR"
echo "Add this to your .bashrc: source $INSTALL_DIR/.bash_profile"