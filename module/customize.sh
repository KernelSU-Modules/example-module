# shellcheck shell=ash
# Sourced by the KernelSU installer. Do not call `exit` here.
# Available variables: MODPATH, API, ARCH, IS64BIT, KSU, KSU_VER_CODE, ...

SKIPUNZIP=0

ui_print "- Example Module Demo"
ui_print "  Android API $API, $ARCH"

if [ "$API" -lt 29 ]; then
  abort "! Android 10 (API 29) or newer is required"
fi

# Nothing to install: this module only demonstrates the release workflow.
set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm "$MODPATH/service.sh" 0 0 0755
