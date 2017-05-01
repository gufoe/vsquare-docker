# Yep
from debian:stretch
# Add a normal user
run useradd -ms /bin/bash user

# Copy the vsquare tools
copy bin /bin/vsquare

# Add the vsquare tools to $PATH
run echo 'export PATH=/bin/vsquare:$PATH' >> /etc/profile

# Install the virtual square stuff
run /bin/vsquare/vsq-setup -i
