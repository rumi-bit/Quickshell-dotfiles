import QtQuick
import QtQuick.Layouts
import "../../" as Root
import Niri


Item {
    id: root
    implicitWidth: image.width
    Layout.leftMargin: 5
    Image {
        id: image
        anchors.verticalCenter: parent.verticalCenter
        source: "file:///home/rumi/Pictures/arch.svg"
        width: 25
        height: 25
        smooth: true
    }
}