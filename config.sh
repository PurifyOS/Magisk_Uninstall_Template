##########################################################################################
#
# Magisk Module Uninstaller Config Script
# by topjohnwu + PurifyOS
#
##########################################################################################
##########################################################################################
#
# Instructions:
#
# 1. Configure the settings in this file (common/config.sh)
#
##########################################################################################

##########################################################################################
# Variables
##########################################################################################
# I recommend initializing the variables here to keep the code clean, but you can initialize the variables where you want it

MODID=template

##########################################################################################
# Installation Message
##########################################################################################

# Set what you want to show when installing your mod

print_modname() {
  ui_print "*******************************"
  ui_print "     Magisk Module Template    "
  ui_print "*******************************"
}

# The Uninstaller Script execute this fuction, you can do anything
# Own Uninstaller Script has some specific function:
# 
# - "uninstall <MODID>", this uninstall the module in <MODID>, you can use
# hardcoded string or variable initialized in this script (by default the variable $MODID is initialized 
# and the after script remove the module specified
#
# - "wipe_data, this create a openrecoveryscript for wipe data and set reboot recovery after this flash
# - "wipe_cache, this create a openrecoveryscript for wipe cache and set reboot recovery after this flash
# - "wipe_dalwik, this create a openrecoveryscript for wipe dalvik-cache and set reboot recovery after this flash
#
# You can use the variable $API for Android API version and variable $ARCH for CPU architecture
shellun() {
  uninstall $MODID
}



