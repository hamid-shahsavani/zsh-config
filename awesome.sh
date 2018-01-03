# install awesome font ! :D
fc-list | grep -i FontAwesome 1> /dev/null 2> /dev/null
if [ $? -ne 0 ]; then
  echo "Patience ... "
  curl -s http://fontawesome.io/assets/font-awesome-4.7.0.zip > /tmp/font-awesome-4.7.0.zip
  unzip /tmp/font-awesome-4.7.0.zip -d /tmp/
  if [ ! -d ${HOME}/.fonts ]; then
    mkdir ${HOME}/.fonts
  fi
  cp /tmp/font-awesome-4.7.0/fonts/fontawesome-webfont.ttf ${HOME}/.fonts/fontawesome.ttf
  fc-cache -v -f
fi