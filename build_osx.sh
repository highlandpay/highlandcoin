qmake RELEASE=1 USE_IPV6=1 USE_UPNP=1 USE_QRCODE=1 highland.pro
make
export QTDIR=/opt/local/libexec/qt4/share
T=$(contrib/qt_translations.py $QTDIR/translations src/qt/locale)
python2.7 contrib/macdeploy/macdeployqtplus  -add-qt-tr $T -dmg -fancy contrib/macdeploy/fancy.plist Highland.app

