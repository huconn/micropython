# CMake file for WeAct Studio RP2040 boards

# The WeAct Studio boards don't have official pico-sdk support so we define it
# See also: https://github.com/raspberrypi/pico-sdk/tree/master/src/boards/include/boards
list(APPEND PICO_BOARD_HEADER_DIRS ${MICROPY_BOARD_DIR})

# Freeze board.py
set(MICROPY_FROZEN_MANIFEST ${MICROPY_BOARD_DIR}/manifest.py)

# Select the 16MB variant as the default
set(PICO_BOARD "weactstudio_16mb")

# Provide different variants for the downloads page
if(MICROPY_BOARD_VARIANT STREQUAL "flash_2mb")
    set(PICO_BOARD "weactstudio_2mb")
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "flash_4mb")
    set(PICO_BOARD "weactstudio_4mb")
endif()

if(MICROPY_BOARD_VARIANT STREQUAL "flash_8mb")
    set(PICO_BOARD "weactstudio_8mb")
endif()
