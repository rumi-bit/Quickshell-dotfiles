import QtQuick
import QtQuick.Layouts
import qs.bar.components

RowLayout {
    id: content

    anchors.fill: parent
    Layout.alignment: Qt.AlignVCenter

    FontMetrics {
        id: fm
        font.pixelSize: 55
    }

    Chevron {
        Layout.alignment: Qt.AlignVCenter
        Layout.topMargin: -(fm.descent * 0.95)
    }

    Item {
        id: layout

        Layout.fillWidth: true

        // Left
        RowLayout {
            id: left
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            
            Workspaces {
                Layout.topMargin: -25
            }


        }

        // Center
        RowLayout {
            id: center
            anchors.centerIn: parent
        }

        // Right
        RowLayout {
            id: right
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
        }

    }

    Chevron {
        mirrored: true
        Layout.topMargin: -(fm.descent * 1.1)
    }

}
