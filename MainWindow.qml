import QtQuick 1.1

Rectangle {
    width: 300
    height: 200
    color: "blue"

    Text {
        anchors.centerIn: parent
        // Привязка к свойству C++: при изменении text в C++ интерфейс автоматически обновится
        text: backend.text
        font.pixelSize: 20
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        // Вызов слота C++ при клике
        onClicked: backend.doSomethingFromQml("Привет")
    }
}
