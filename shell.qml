import Quickshell
import QtQuick
import "bar" as Bar

// ── Shell root ─────────────────────────────────────────────────
// Each visual surface is a separate component.
// Add more Loader {} entries here as you build panels, popups, etc.
ShellRoot {
    Bar.Bar {}
}
