# Ingrasys S9130 Series
# CPU Module: Intel Xeon Broadwell-DE 

ONIE_ARCH ?= x86_64
SWITCH_ASIC_VENDOR = nephos

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# The VENDOR_VERSION string is appended to the overal ONIE version
# string.  HW vendors can use this to appended their own versioning
# information to the base ONIE version string.

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# Open Compute Project IANA number
VENDOR_ID = 2468

# Enable the i2ctools
I2CTOOLS_ENABLE = yes

#
# Console parameters can be defined here (default values are in
# build-config/arch/x86_64.make).
#
CONSOLE_SPEED = 115200
CONSOLE_DEV = 0

# Set Linux kernel version
LINUX_VERSION       = 5.4
LINUX_MINOR_VERSION = 86

# Older GCC required for older 3.2 kernel
GCC_VERSION = 4.9.2

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
