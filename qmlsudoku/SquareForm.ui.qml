import QtQuick 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.2
import QtGraphicalEffects 1.0

Rectangle {
    id: square
    width: 40
    height: 40
    border.width: 1
    border.color: "black"

    property alias assigned: assigned
    property alias entry: entry
    property alias hintGrid: hintGrid
    property alias hints: hintGrid.hints
    property alias mouseArea: mouseArea

    Hint {
        id: hintGrid
        anchors.fill: parent
        visible: true
    }

    Label {
        id: assigned
        anchors.fill: parent
        text: "0"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 24
        font.bold: true
        visible: false
    }

    DropShadow {
        id: shadow
        anchors.fill: assigned
        color: "#80000000"
        horizontalOffset: 3
        verticalOffset: 3
        radius: 8.0
        samples: 16
        source: assigned
        visible: assigned.visible
    }

    TextField {
        id: entry
        width: parent.width - 4
        height: parent.height - 4
        anchors.centerIn: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        inputMask: "D"
        font.pointSize: 22
        visible: false
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
        visible: false
    }
}
