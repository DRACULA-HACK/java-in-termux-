#!/data/data/com.termux/files/usr/bin/bash

clear
pkg install pv
pkg install wget
pkg install curl

clear

# colour
Black="\033[1;30m"       # Black
Red="\033[1;31m"         # Red
Green="\033[1;32m"       # Green
Yellow="\033[1;33m"      # Yellow
Blue="\033[1;34m"        # Blue
Purple="\033[1;35m"      # Purple
Cyan="\033[1;36m"        # Cyan
White="\033[1;37m"       # White

echo -e "    $Blue

  ▒█▀▄▀█ █▀▀█ █▀▀ ▀▀█▀▀ █▀▀ █▀▀█ ░░ █░░█ █▀▀█ █▀▀ █░█
  ▒█▒█▒█ █▄▄█ ▀▀█ ░░█░░ █▀▀ █▄▄▀ ▀▀ █▀▀█ █▄▄█ █░░ █▀▄
  ▒█░░▒█ ▀░░▀ ▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀ ░░ ▀░░▀ ▀░░▀ ▀▀▀ ▀░▀


                  🄼🄰🅂🅃🄴🅁-🄷🄰🄲🄺

                please wait

                hehe

"
                echo -e " $Purple

                hy

                I am Nidhin


                I have kali , metasploit tools on my github

                        have fun with my tools

                my github: https://github.com/DRACULA-HACK

                my contact : +91 6235369260


                have fun bro
"
sleep 15
curl -s "http://artscene.textfiles.com/vt100/bambi_godzila"|pv -q -L 1600
sleep 10
clear
echo -e "    $Yellow

+-+-+-+-+-+-+-+-+-+-+-+-+
 🄼🄰🅂🅃🄴🅁-🄷🄰🄲🄺
 +-+-+-+-+-+-+-+-+-+-+-+-+
 "
echo -e "    $Red
───░█ █▀▀█ ▀█─█▀ █▀▀█ 
─▄─░█ █▄▄█ ─█▄█─ █▄▄█ 
░█▄▄█ ▀──▀ ──▀── ▀──▀
"
        echo "hi enjoy the java script "
echo

        echo "by master hack "

#Setup
set -e
shopt -s expand_aliases
alias ee='echo -e'

#Greetings
echo
ee "\e[93mThis script will install Java in Termux."
ee "\e[93mLibraries compiled by \e[32mHax4us\e[93m, script written by \e[32mHax4us \e[93mand \e[32mMasterDevX\e[93m."
echo

#Checking for existing Java installation
if [ -e $PREFIX/bin/java ]
then
        ee "\e[32mJava is already installed!"
        echo
        exit
else
        #Checking, whether is someone trying to cheat and simplyfy their installation it on Linux (i.e. x86 (not listad, as you can see) mac>
        case `dpkg --print-architecture` in
        aarch64)
                archname="aarch64"; tag="v8" ;;
        arm64)
                archname="aarch64"; tag="v8" ;;
        armhf)
                archname="arm"; tag="v8-151" ;;
        armv7l)
                archname="arm"; tag="v8-151" ;;
        arm)
                archname="arm"; tag="v8-151" ;;
        *)
                ee "\e[91mERROR: Unknown architecture."; echo; exit ;;
        esac

        #Actual installation
        ee "\e[32m[*] \e[34mDownloading JDK-8 (~70Mb) for ${archname}...  🕛This will take some time, so better make a coffee.🕛"
        wget https://github.com/Hax4us/java/releases/download/${tag}/jdk8_${archname}.tar.gz -q

        ee "\e[32m[*] \e[34mMoving JDK to system..."
        mv jdk8_${archname}.tar.gz $PREFIX/share

        ee "\e[32m[*] \e[34mExtracting JDK..."
        cd $PREFIX/share
        tar -xhf jdk8_${archname}.tar.gz

        ee "\e[32m[*] \e[34mSeting-up %JAVA_HOME%..."
        export JAVA_HOME=$PREFIX/share/jdk8
        echo "export JAVA_HOME=$PREFIX/share/jdk8" >> $HOME/.profile

        ee "\e[32m[*] \e[34mCoping Java wrapper scripts to bin..."
        #I'm not 100% sure, but getting rid of bin contnent MAY cause some issues with %JAVA_HOME%, thus it's no longer moved - copied inste>
        cp bin/* $PREFIX/bin
        
        ee "\e[32m[*] \e[34mCleaning up temporary files..."
        rm -rf $HOME/installjava
        rm -rf $PREFIX/share/jdk8_${archname}.tar.gz
        rm -rf $PREFIX/share/bin
        
        echo
        echo "BY MASTER-HACK THANK YOU TO RUN THIS SCRIPT"
        echo
        ee "\e[32mJava was successfully installed!\e[39m"
        echo "Enjoy your new, tasty Java :D (and a coffee, if you didn't drink it yet)"
        echo
        fi
