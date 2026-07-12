import QtQuick
import QtQuick.Layouts
import "../../" as Root

// ── System tray (right side) ───────────────────────────────────
// Static placeholders using Nerd Font icons.
// TODO: Wire each to a Process{} that reads real system state.
Row {
    id: sysTray
    spacing: Root.Theme.padding

    // ── Volume ────────────────────────────────────────────────
    Text {
        text: " 65%"
        color: Root.Theme.blue
        font.family: Root.Theme.fontFamily
        font.pixelSize: Root.Theme.fontSize
        verticalAlignment: Text.AlignVCenter
    }

    // ── Network ───────────────────────────────────────────────
    Text {
        text: "󰤨 Wi-Fi"
        color: Root.Theme.green
        font.family: Root.Theme.fontFamily
        font.pixelSize: Root.Theme.fontSize
        verticalAlignment: Text.AlignVCenter
    }

    // ── Battery ───────────────────────────────────────────────
    Text {
        text: "󰁹 100%"
        color: Root.Theme.yellow
        font.family: Root.Theme.fontFamily
        font.pixelSize: Root.Theme.fontSize
        verticalAlignment: Text.AlignVCenter
    }
}
