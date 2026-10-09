
import QtQuick 2.15
import QtQuick.Layouts 1.15
import SddmComponents 2.0 as SDDM

ColumnLayout {
    id: formContainer
    SDDM.TextConstants { id: textConstants }
    spacing:0
    property int p: config.ScreenPadding == "" ? 0 : config.ScreenPadding
    property string a: config.FormPosition
    Item { Layout.fillHeight: true }
    Clock {
        id: clock

        Layout.alignment: Qt.AlignHCenter
        // important
        //Layout.preferredHeight: root.height / 3
        Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
        Layout.bottomMargin: 0;
    }
    
    Input {
        id: input

        Layout.alignment: Qt.AlignHCenter
        //Layout.preferredHeight: root.height / 10
        Layout.leftMargin: p != "0" ? a == "left" ? -p : a == "right" ? p : 0 : 0
    }

    Item { Layout.fillHeight: true }
}
