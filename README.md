# pwm-ctrl
This is a project to build pwm control systems on the Zynq SoC.

## Documentation
TO DO

## How to use
- Clone the repo and navigate to the pwm_project folder.
- Launch Vivado and check with pwd that pwm_project is the current directory.
- Run the pwm_project.tcl script to recreate the project.

Note: From now on the Vivado project can be modified but the application code should always match the exported hardware or at least the bitstream

- Generate the bitstream and export the hardware into a the XSA file.

### Troubleshoots
- The recreate.tcl script should be launched from the right directory otherwise Missing File Errors occours.
- Check the project dependency in the recreate.tcl script right after the header, if something misses then the .tcl script will fail to generate the project.

