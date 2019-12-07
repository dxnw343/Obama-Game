import QtQuick 2.9
import QtQuick.Window 2.2
import VPlay 2.0

Window {
    id: game
    property real avminx
    property real avmaxx
    property real avminy
    property real avmaxy



    Image {
        id: bg
        anchors.fill: parent
        anchors.right: parent.right
        source: "file:///C:/Users/dwood/Documents/ObamaGameGood/Obama-Game/Images/grass.jpg"

        Rectangle {
            id: avatar
            x: 33
            y: 60
            width: 60
            height: 60
            color: "#ffffff"
            focus: true

            Keys.onPressed: {
                avminx = avatar.x.valueOf()
                avmaxx = avatar.x.valueOf() + 60
                avminy = avatar.y.valueOf()
                avmaxy = avatar.y.valueOf() + 60
                if(event.key === Qt.Key_W){
                    avatar.y -= 9
                }
                if(event.key === Qt.Key_A){
                    avatar.x -= 9
                }
                if(event.key === Qt.Key_S){
                    avatar.y += 9
                }
                if(event.key === Qt.Key_D){
                    avatar.x += 9
                }
            }

            Image {
                id: avatarImage
                anchors.fill: parent
                source: "Images/avatar.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: center
            x: 598
            y: 326
            width: 85
            height: 85
            color: "#ffffff"

            Image {
                id: centerImage
                anchors.fill: parent
                source: "Images/center.png"
                fillMode: Image.PreserveAspectFit
            }
        }

    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:960;width:1280}D{i:3;anchors_height:100;anchors_width:100}
D{i:5;anchors_height:100;anchors_width:100}
}
##^##*/
