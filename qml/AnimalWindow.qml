import QtQuick 2.0
import QtQuick.Controls 2.12

Rectangle {
    id: animalWindow

    property string animalName

    width: parent.width
    height: parent.height
    color: "lightyellow"

    Column {
        id: buttonsColumn
        width: parent.width * 0.8
        anchors.centerIn: parent
        spacing: 10

        Rectangle {
            width: parent.width
            height: 100
            color: "transparent"

            Text {
                anchors.centerIn: parent
                text: animalName
                color: "red"
                font {
                    pixelSize: parent.height * 0.6
                }
            }
        }

        Button {
            width: parent.width
            height: 100
            text: "Talk"
            font.pixelSize: height * 0.6
            onClicked: {

            }
        }

        Rectangle {
            width: parent.width
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            color: "transparent"

            Text {
                id: animalVoice
                anchors.centerIn: parent
                color: "red"
                font {
                    pixelSize: parent.height * 0.6
                }
            }
        }
    }
}
