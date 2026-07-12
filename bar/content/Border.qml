import QtQuick
import QtQuick.Shapes

Rectangle {
    id: rec

    color: "transparent"
    anchors.fill: parent

    Shape {
        id: topBorder

        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 70
        height: 3
        anchors.top: parent.top

        ShapePath {
            strokeColor: "white"
            strokeWidth: 1
            fillColor: "transparent"
            strokeStyle: ShapePath.DashLine
            dashPattern: [4, 4] // dash length, gap length
            startX: 0
            startY: 0

            PathLine {
                x: topBorder.width
                y: 0
            }

        }

    }

    Shape {
        id: bottomBorder

        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 70
        height: 6
        anchors.bottom: parent.bottom

        ShapePath {
            strokeColor: "white"
            strokeWidth: 1
            fillColor: "transparent"
            strokeStyle: ShapePath.DashLine
            dashPattern: [4, 4]
            startX: 0
            startY: 0

            PathLine {
                x: bottomBorder.width
                y: 0
            }

        }

    }

}
