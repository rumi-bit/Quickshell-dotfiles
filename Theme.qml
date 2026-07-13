pragma Singleton
import QtQuick

// ── Centralized theme ──────────────────────────────────────────
// Edit colors/fonts here; every component reads from Theme.*
QtObject {
    // ── Palette ───────────────────────────────────────────────
    readonly property color bg:          "#1e1e2e"  // base
    readonly property color surface:     "#313244"  // surface0
    readonly property color overlay:     "#45475a"  // surface1
    readonly property color text:        "#cdd6f4"  // text
    readonly property color subtext:     "#a6adc8"  // subtext0
    readonly property color accent:      "#cba6f7"  // mauve
    readonly property color green:       "#a6e3a1"
    readonly property color red:         "#f38ba8"
    readonly property color yellow:      "#f9e2af"
    readonly property color blue:        "#89b4fa"
    readonly property color transparent: "#00000000"
    readonly property color main: '#ffffff'
    readonly property color pink: '#d27389'
    readonly property color main2: '#C1B492'
    

    // ── Typography ────────────────────────────────────────────
    readonly property string fontFamily:     "Roboto"
    readonly property string fontFamilyMono: "Roboto"
    readonly property int fontSizeSmall:  11
    readonly property int fontSize:       13
    readonly property int fontSizeLarge:  15
    

    // ── Geometry ──────────────────────────────────────────────
    readonly property int barHeight:  32
    readonly property int padding:    8
    readonly property int radius:     20
    readonly property int gap:        6
    readonly property int iconSize:   16
}
