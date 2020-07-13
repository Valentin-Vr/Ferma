import QtQuick 2.0
import QtQuick.Controls 2.12
import elevons.team 1.0

Rectangle {
    id: animalWindow

    property string animalName

    width: parent.width
    height: parent.height
    color: "lightyellow"

    Ferma {
        id: ferma
    }

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
               animalVoiceText.text = ferma.animalVoice(animalName)
            }
        }

        Rectangle {
            width: parent.width
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            color: "transparent"

            Text {
                id: animalVoiceText
                anchors.centerIn: parent
                color: "red"
                font {
                    pixelSize: parent.height * 0.6
                }
            }
        }

        Button {
            id: button
            width: parent.width
            height: 100
            text: "Change animal to another"
            font.pixelSize: height * 0.6
            onClicked: {
                button.enabled = false
                if (animalName === "Мурка") {
                    animalName = "Хрюша"
                    animalVoiceText.text = ""
                } else {
                    if (animalName === "Петушок") {
                        animalName = "Мурка"
                        animalVoiceText.text = ""
                    } else {
                        if (animalName === "Хрюша") {
                            animalName = "Петушок"
                            animalVoiceText.text = ""
                        }
                    }
                }
            }
        }
    }
}
