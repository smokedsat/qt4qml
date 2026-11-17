import QtQuick 1.1

Rectangle {
    width: 300
    height: 200
    color: "yellow"

    // Единственное место, где живёт состояние
    property int currentPage: 1

    MainPage1 {
        anchors.fill: parent
        visible: currentPage === 1
    }

    MainPage2 {
        anchors.fill: parent
        visible: currentPage === 2
    }
}
