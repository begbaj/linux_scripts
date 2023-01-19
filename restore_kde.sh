# Logout from KDE and run:
cd ~/
rm -rIf .kde
rm -rIf .cache/plasmashell*
rm -rIf .cache/org.kde.dirmodel-qml.kcache
rm -rIf .cache/kioexec/ .cache/krunner/ .cache/ksycoca5*
rm -rIf .cache/krunnerbookmarkrunnerfirefoxdbfile.sqlite
rm -fI .config/plasma*
rm -rIf .config/kde*
cd ~/.local/share/
rm -rIf kate/ kded5/ klipper/ knewstuff3/ kscreen/ konsole/ kwalletd/ ksysguard/ kmail2/ kcookiejar/ kactivitymanagerd/
rm -rIf dolphin kate kcookiejar kded5 keyrings klipper kmail2 knewstuff3 konsole kscreen ksysguard kwalletd kxmlgui5 plasma_engine_comic plasma plasma_notes org.kde.gwenview
cd ~/.config/
rm -rIf akonadi* KDE kconf_updaterc baloo* dolphinrc drkonqirc gwenviewrc kmail2rc k*rc katemetainfos
# It wipes config of all software, but helps
# CREDIT FOR THIS SCRIPT GOES TO SOMEONE ON STACK OVERFLOW (or maybe Archlinux Forum?),
# unfortunatly I don't remember who the person was. If you have the link to that
# discussion, feel free to make to contact me and I will add the reference.
