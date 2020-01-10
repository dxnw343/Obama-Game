import QtQuick 2.9
import QtQuick.Window 2.2
// import QtQuick.Controls 2.14
import VPlay 2.0


GameWindow {
    id: game
    property real avminx
    property real avmaxx
    property real avminy
    property real avmaxy

    property real isminx
    property real ismaxx
    property real isminy
    property real ismaxy

    property real heminx
    property real hemaxx
    property real heminy
    property real hemaxy

    property int randx
    property int randy
    property int repcount

    function hedgerepeat(){
        if(repcount<6){
          randx = Math.random(50,135) * 500
          randy = Math.random(25,125) * 500
          repcount = repcount +1
          console.log(randx);
            console.log(randy);
        }
    }

 //   Action {  }



    Component.onCompleted: {
        hedgerepeat();
    }



    Rectangle {
        id: ocean
        color: "#166cff"
        anchors.fill: parent

        Image {
            id: image
            anchors.fill: parent
            source: "Images/ocean.jpg"
            fillMode: Image.Stretch
        }

        Scene {
            id: scene
            x: 250
            y: 125
            width: 500
            height: 500

            Rectangle {
                id: island
                color: "#37e643"
                anchors.fill: parent

                Image {
                    id: bg
                    x: 0
                    y: 0
                    anchors.fill: parent
                    source: "Images/grass.jpg"
                    opacity: 20


                    Rectangle {
                        id: avatar
                        x: 220
                        y: 220
                        width: 30
                        height: 30
                        color: "#f90202"
                        focus: true

                        Keys.onPressed: {
                            avminx = avatar.x.valueOf()
                            avmaxx = avatar.x.valueOf() + 60
                            avminy = avatar.y.valueOf()
                            avmaxy = avatar.y.valueOf() + 60

                            isminx = island.x.valueOf()
                            ismaxx = island.x.valueOf() + 530
                            isminy = island.y.valueOf()
                            ismaxy = island.y.valueOf() + 530

                            heminx = hedge.x.valueOf()
                            hemaxx = hedge.x.valueOf() + 50
                            heminy = hedge.y.valueOf()
                            hemaxy = hedge.y.valueOf() + 50

                            //if(avmaxy >= heminy && avminx >= hemaxx){
                                //avatar.x -= 5
                            //}

                            if(isminx >= avminx){
                                avatar.x += 5
                            }
                            if(ismaxx <= avmaxx){
                                avatar.x -= 5
                            }
                            if(isminy >= avminy){
                                avatar.y += 5
                            }
                            if(ismaxy <= avmaxy){
                                avatar.y -= 5
                            }


                            if(event.key === Qt.Key_W){
                                avatar.y -= 5
                                console.log("Going up")
                            }
                            if(event.key === Qt.Key_A){
                                avatar.x -= 5
                                console.log("Going left")
                            }
                            if(event.key === Qt.Key_S){
                                avatar.y += 5
                                console.log("Going down")
                            }
                            if(event.key === Qt.Key_D){
                                avatar.x += 5
                                console.log("Going right")
                            }
                        }

                        Image {
                            id: avatarImage
                            anchors.fill: parent
                            source: "Images/avatar.png"
                            fillMode: Image.PreserveAspectFit
                        }
                    }


                    Grid{
                        anchors.fill: parent


                        Repeater {
                            id: hedge
                            model: 6

                            Rectangle {
                                //id: hedge1
                                x: randx  //needs to be a random x
                                y: randy //needs to be a random y
                                width: 50
                                height: 50
                                color: "#ffffff"
                                Component.onCompleted:
                                    hedgerepeat()

                                Image {
                                    id: hedgeimage
                                    anchors.fill: parent
                                    source: "Images/hedge.jpg"
                                    fillMode: Image.PreserveAspectFit
                            }

                        }
                    }
                }
            }
        }
    }


}

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:750;width:750}D{i:2;anchors_height:100;anchors_width:100}
D{i:7;anchors_height:100;anchors_width:100}D{i:4;anchors_height:200;anchors_width:200}
D{i:3;anchors_height:500;anchors_width:500;anchors_x:250;anchors_y:125}D{i:1;anchors_height:200;anchors_width:200}
}
##^##*/
