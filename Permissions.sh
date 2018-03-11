# FIRST TIME SETUP FOR PERMISSION

# Change USB* with any device you want to gain permission
echo "Listing all the /dev/ttyUSB* ports"
echo "(Make sure to edit the .sh if you want to list other ports, like /dev/ttyACM*)"
echo ""
ls -l /dev/ttyUSB*
echo ""

# You'll get something like this:
# crw-rw-rw- 1 root dialout 188, 0 mar 11 17:42 /dev/ttyUSB0

# Add the user to the group
sudo usermod -a -G dialout $USER
echo "$USER added to the group"
echo ""

# And chmod it (replace ttyUSB0 with the port you want to gain permission for)
sudo chmod a+rw /dev/ttyUSB0
echo "Port has now a+rw permission"
echo ""

echo "You need to logout and login in order for changes to take effect"
