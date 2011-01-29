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

 There just add the following lines at the end of this file (or similar, with the script names etc). Of course, replace `ktoso` and `/home/ktoso/` with your *username* and *your home directory*.

        ## allow running keyboard backlight scripts
        ktoso ALL=(ALL) NOPASSWD:/home/ktoso/g73/*

4. Now all that's left is to setup the key bindings for the scripts. If you're on KDE4, just go to *System Settings -> Shortcuts and Gestures -> Custom Shortcuts* and *edit -> import...* the file **~/g73/g73_keyboard.khotkeys** which contains ready keybindings for these scripts. Now you may use `Fn + F3` to make the keyboard backlight shine **less**, and the `Fn + F4` combination to make it shine **more**.

   If you're on a GNOME or other windowing system, please follow the usual steps for them to add some own keybinding. What you want to bind is simply calling the ~/g73/g73\_light\_up.sh and ~/g73/g73\_light\_down.sh scrips - easy :-)

License
======
I hereby release this script as **Beerware**. Just for fun I guess ;-) Please find the fill license text bellow:

      "THE BEER-WARE LICENSE" (Revision 42):
      <konrad.malawski@project13.pl> wrote this file. As long as you retain this notice you
      can do whatever you want with this stuff. If we meet some day, and you think
      this stuff is worth it, you can buy me a beer in return Konrad Malawski


I'll be more than happy if you'd drop a comment here if you used this script by the way: http://www.blog.project13.pl/index.php/fun/1163/g73-keayboard-backlight-scripts/ :-) 
