import QtQuick 1.1

Rectangle {
    id: page1
    color: "blue"

    Text {
        anchors.centerIn: parent
        text: backend.text
        font.pixelSize: 20
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            backend.doSomethingFromQml("Привет")
            currentPage = 2          // работает, т.к. контекст общий
        }
    }
}
