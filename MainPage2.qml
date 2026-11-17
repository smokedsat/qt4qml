import QtQuick 1.1

Rectangle {
    id: page2
    color: "green"

    Text {
        anchors.centerIn: parent
        text: "Это вторая страница"
        font.pixelSize: 20
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            currentPage = 1
        }
    }
}
