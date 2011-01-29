Asus G73 Keyboard Backlight GNU/Linux Scripts
=============================================
To enable the `Fn + F3` and `Fn + F4` shortcuts to work under linux and really
manipulate the backlight brighntess on your *Asus G73* series notebook, follow theese simple steps:

1. Clone this repository to your home directory (or wherever you want to, I'll do this example for ~/ for simplicity)

      cd 
      git clone git://github.com/ktoso/g73-keyboard-backlight-sh.git g73

2. Make sure all scripts are marked executable:
      cd g73
      chmod +x *.sh

3. Take a look at these scripts to make sure you trust them, why? Because they'll need root access, without asking for the password  . Now we'll add these scripts to allow `sudo`to run them without asking for any password:

     su -c 'visudo' # or 'sudo visudo' if you're a sudoer (on ubuntu etc)

4. There just add the following lines at the end of this file (or similar, with the script names etc). Of course, replace `ktoso` and `/home/ktoso/` with your *username* and *your home directory*.
    
     ## allow running keyboard backlight scripts
     ktoso ALL=(ALL) NOPASSWD:/home/ktoso/g73/*
