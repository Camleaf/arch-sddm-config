
import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Effects
import QtMultimedia

import "Components"

Pane {
    id: root

    height: config.ScreenHeight || Screen.height
    width: config.ScreenWidth || Screen.ScreenWidth
    padding: config.ScreenPadding

    // Click outside backdrop to close
    clip: true
    readonly property int bleed: 64

    Image {
            id: background 
            anchors.fill: parent
            anchors.margins: -root.bleed 
            source: config.Background
            visible: true 
            fillMode: Image.PreserveAspectCrop
    }


    LoginForm {
        id: form
 
        height: parent.height
        width: parent.width / 2.5
        anchors.horizontalCenter: parent.horizontalCenter
        z: 1
    }
    MultiEffect {
        anchors.fill: background 
        source: background 
        blurEnabled: true
        blur: 1.5
        blurMax: 64 
        brightness: -0.3
    }
}
