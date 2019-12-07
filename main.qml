import QtQuick 2.9
import QtQuick.Window 2.2
import VPlay 2.0

Window {
    id: game




    Image {
        id: bg
        anchors.fill: parent
        anchors.right: parent.right
        source: "file:///C:/Users/dwood/Documents/ObamaGameGood/Obama-Game/Images/grass.jpg"

        Rectangle {
            id: avatar
            x: 33
            y: 60
            width: 80
            height: 80
            color: "#ffffff"
            focus: true
            Keys.onPressed: {

                if(event.key === Qt.Key_W){
                    avatar.y -= 7
                }
                if(event.key === Qt.Key_A){
                    avatar.x -= 7
                }
                if(event.key === Qt.Key_S){
                    avatar.y += 7
                }
                if(event.key === Qt.Key_D){
                    avatar.x += 7
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
            x: 278
            y: 198
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
