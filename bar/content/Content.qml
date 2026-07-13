import QtQuick
import QtQuick.Layouts
import qs.bar.components
import "../../" as Root

RowLayout {
    id: content

    anchors.fill: parent
    

    FontMetrics {
        id: fm

        font.pixelSize: 55
    }

    Item {
        id: layout
        Layout.fillWidth: true
        Layout.fillHeight: true

        Item {
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.verticalCenter: parent.verticalCenter
            implicitWidth: left.implicitWidth
            implicitHeight: left.implicitHeight

            Rectangle {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.implicitWidth + 16
                height: layout.height
                radius: Root.Theme.radius
                color: Root.Theme.main2
            }

            RowLayout {
                id: left

                Workspaces {
                }
            }
        }

        Item {
            anchors.centerIn: parent
            implicitWidth: center.implicitWidth
            implicitHeight: center.implicitHeight

            Rectangle {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.implicitWidth + 16
                height: layout.height
                radius: Root.Theme.radius
                color:  Root.Theme.main2
            }

            RowLayout {
                id: center
            }
        }

        Item {
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 8
            implicitWidth: right.implicitWidth
            implicitHeight: right.implicitHeight

            Rectangle {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.implicitWidth + 16
                height: layout.height
                radius: Root.Theme.radius
                color: Root.Theme.main2
            }

            RowLayout {
                id: right
            }
        }

    }

}
