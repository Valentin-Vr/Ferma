import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Ferma")
    minimumWidth: 640
    minimumHeight: 480

    Loader {
        id: mainLoader
        anchors.fill: parent
        source: "qrc:/SelectionWindow.qml"
    }
}
