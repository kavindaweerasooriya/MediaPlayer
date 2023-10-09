import QtQuick
import QtQuick.Controls.Fusion
import QtQuick.Effects

Button {
    id: control
    flat: true

    contentItem: Image {
        id: image
        source: control.icon.source
    }

    background: MultiEffect {
        source: image
        anchors.fill: control
        visible: control.down
        opacity: 0.5
        shadowEnabled: true
        blurEnabled: true
        blur: 0.5
    }
}
