import QtQuick
import QtQuick.Layouts
import qs.bar.components
import "../../" as Root

Item {
    id: content
    required property var anchorWindow
    anchors.fill: parent

    FontMetrics {
        id: fm

        font.pixelSize: 55
    }

    Rectangle {
        anchors.fill: parent
        radius: Root.Theme.radius
        color: Root.Theme.main2
    }

    
    RowLayout {
        id: center
        anchors.centerIn: parent
        Clock {onToggleCalendar: cal.popupVisible = !cal.popupVisible}
        Calander {id: cal; anchorWindow: content.anchorWindow}
    }

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 8
        anchors.rightMargin: 8

        RowLayout {
            id: left
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            Image{}
            Workspaces {id: workspace}
            Windows {index: workspace.activeWorkspace}
        }

        Item {
            Layout.fillWidth: true
        }

        RowLayout {
            id: right
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
        }
    }

}
