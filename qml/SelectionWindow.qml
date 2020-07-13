import QtQuick 2.0
import QtQuick.Controls 2.12

Rectangle {
    width: parent.width
    height: parent.height
    color: "lightgreen"

    signal animalName(string name)

    ListModel {
        id: listModel

        ListElement {
            buttonText: "Петушок"
        }

        ListElement {
            buttonText: "Мурка"
        }

        ListElement {
            buttonText: "Хрюша"
        }
    }

    Column {
        id: buttonsColumn
        width: parent.width
        spacing: 5

        Rectangle {
            id: backgroundColor
            width: parent.width * 0.8
            height: parent.height * 0.2
            anchors.horizontalCenter: parent.horizontalCenter
            color: "transparent"

            Text {
                id: textInButton
                anchors.centerIn: parent
                text: "Выберите пета"
                color: "red"
                font {
                    pixelSize: parent.height * 0.6
                }
            }
        }

        Repeater {
            model: listModel
            delegate: Button {
                width: parent.width * 0.8
                height: 100
                anchors.horizontalCenter: parent.horizontalCenter
                highlighted: true
                text: model.buttonText
                font.pixelSize: height * 0.6
                onClicked: executeButtonEvent(model.index)
            }
        }
    }

    function executeButtonEvent(index) {
        switch (index) {
        case 0:

            mainLoader.source = "qrc:/AnimalWindow.qml"
            mainLoader.setSource(source, {animalName: "Петушок"})
            break
        case 1:
            mainLoader.source = "qrc:/AnimalWindow.qml"
            mainLoader.setSource(source, {animalName: "Мурка"})
            break
        case 2:
            mainLoader.source = "qrc:/AnimalWindow.qml"
            mainLoader.setSource(source, {animalName: "Хрюша"})
            break
        }
    }
}
