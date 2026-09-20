import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell.Services.UPower

PanelWindow {
anchors.top:true
anchors.left:true
anchors.right:true
color:"#00000000"
implicitHeight:50
Image {
source: "Quickshell/Çubuk.png"
anchors.centerIn :parent
}

//Görev Çubuğu içerikleri

RowLayout {
anchors.centerIn:parent

Button {
background: Image {
source: "Quickshell/Dur.png"
anchors.centerIn:parent
}
onClicked: kapat.show()
}

Button {
background: Image {
source: "Quickshell/Başlat.png"
anchors.centerIn:parent
}
onClicked: Quickshell.execDetached("nwg-drawer");
}

Button {
background: Image {
source: "Quickshell/bluetooth.png"
anchors.centerIn:parent
}
onClicked: Quickshell.execDetached("blueman-manager");
}

Button {
background: Image {
source: "Quickshell/speaker.png"
sourceSize.height: 45
anchors.centerIn:parent
}
onClicked: Quickshell.execDetached("pwvucontrol");
}

Button {
background: Image {
source: "Quickshell/network.png"
sourceSize.height:45
anchors.centerIn:parent
}
onClicked: Quickshell.execDetached("nmrs-gui");
}

Button {
background: Image {
source: "Quickshell/battery.png"
sourceSize.height:45
anchors.centerIn:parent
}
Text {
color: "#ffffff"
text: "%"+ (UPower.displayDevice.percentage * 100).toFixed(0)
anchors.bottom:parent.bottom
anchors.horizontalCenter:parent.horizontalCenter
}
onClicked: Quickshell.execDetached("lxqt-config-powermanagement")
}

Rectangle {
Image {
source: "Quickshell/Saat.png"
anchors.centerIn:parent
}
Text {
SystemClock {
id:clock
precision:SystemClock.Seconds
}
text: Qt.formatDateTime(clock.date, "  hh:mm:ss \nyyyy-MM-dd")
anchors.centerIn:parent
color:"#ffffff"
font.pointSize:13
}
implicitWidth: 100
color: "#00000000"
}}

//Masaüstü Araçları
PanelWindow {
anchors.top:true
anchors.right:true

color: "#00000000"
aboveWindows:false
implicitHeight:600
implicitWidth:300

ColumnLayout {

Rectangle {
color: "#00000000"
implicitHeight:170
implicitWidth:150
Text {
id:ay
color:"#dddddd"
font.pointSize:5
Process {
id:ayproc
command:[ "pyphoon", "-n", "15"]
running:true
stdout:StdioCollector {onStreamFinished: ay.text = this.text}
}}}

Button {
anchors.right:parent.right
background:Image {
source: "Quickshell/Linux.png"
anchors.centerIn:parent
}
Text {
id:uname
color:"#ffffff"
font.pointSize:7
anchors.horizontalCenter:parent.horizontalCenter
anchors.bottom:parent.bottom
Process {
id:unameproc
command:[ "uname", "-r"]
running:true
stdout:StdioCollector {onStreamFinished: uname.text = this.text}
}}}}

//Dur düğmesinin güç seçenekleri

Window {

width:400
height:100
title:"¡¡¡DUR!!!"
id:kapat
visible: false
color:"#330000"

RowLayout {
anchors.centerIn:parent

Button {
background: Image {
source: "Quickshell/Kapat.png"
anchors.centerIn:parent
}
Text {
text:"Kapat"
color: "#ffffff"
anchors.horizontalCenter:parent.horizontalCenter
anchors.bottom:parent.bottom
}
onClicked: Quickshell.execDetached("poweroff");
}

Button {
background: Image {
source: "Quickshell/Yeniden-Başlat.png"
anchors.centerIn:parent
}
Text {
text:"Yeniden\nBaşlat"
color: "#ffffff"
anchors.horizontalCenter:parent.horizontalCenter
anchors.bottom:parent.bottom
}
onClicked: Quickshell.execDetached("reboot");
}

Button {
background: Image {
source: "Quickshell/EFI-Başlat.png"
anchors.centerIn:parent
}
Text {
text:"EFI/BIOS'a\nBaşlat"
color: "#ffffff"
anchors.horizontalCenter:parent.horizontalCenter
anchors.bottom:parent.bottom
}
onClicked: Quickshell.execDetached("efibaslat");
}

Button {
background: Image {
source: "Quickshell/Uyku.png"
anchors.centerIn:parent
}
Text {
text:"Uyku"
color: "#ffffff"
anchors.horizontalCenter:parent.horizontalCenter
anchors.bottom:parent.bottom
}
onClicked: Quickshell.execDetached("suspend");
}

Button {
background: Image {
source: "Quickshell/Çık.png"
anchors.centerIn:parent
}
Text {
text:"Çık"
color: "#ffffff"
anchors.horizontalCenter:parent.horizontalCenter
anchors.bottom:parent.bottom
}
onClicked: Quickshell.execDetached("çık");
}
}}}}