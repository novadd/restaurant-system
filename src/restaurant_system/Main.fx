/*
 * Main.fx
 *
 * Created on 2010-05-01, 20:27:36
 */

package restaurant_system;

/**
 * @author Tomek
 */
public class Main {

    public-read var rectangle4: javafx.scene.shape.Rectangle;//GEN-BEGIN:main
    public-read var rectangle: javafx.scene.shape.Rectangle;
    public-read var panel2: javafx.scene.layout.Panel;
    public-read var rectangle2: javafx.scene.shape.Rectangle;
    public-read var logout1: javafx.scene.control.Button;
    public-read var rectangle5: javafx.scene.shape.Rectangle;
    public-read var circle: javafx.scene.shape.Circle;
    public-read var text: javafx.scene.text.Text;
    public-read var circle2: javafx.scene.shape.Circle;
    public-read var text2: javafx.scene.text.Text;
    public-read var circle3: javafx.scene.shape.Circle;
    public-read var text3: javafx.scene.text.Text;
    public-read var circle4: javafx.scene.shape.Circle;
    public-read var text4: javafx.scene.text.Text;
    public-read var waiterTables: javafx.scene.layout.Panel;
    public-read var rectangle3: javafx.scene.shape.Rectangle;
    public-read var listView: javafx.scene.control.ListView;
    public-read var buttonLogin: javafx.scene.control.Button;
    public-read var login: javafx.scene.layout.Panel;
    public-read var scene: javafx.scene.Scene;
    public-read var font: javafx.scene.text.Font;
    public-read var colorBackground: javafx.scene.paint.Color;
    public-read var colorBlack: javafx.scene.paint.Color;
    public-read var colorWhite: javafx.scene.paint.Color;
    public-read var colorTable: javafx.scene.paint.Color;
    public-read var innerShadowEffect: javafx.scene.effect.InnerShadow;
    public-read var dropShadowEffect: javafx.scene.effect.DropShadow;
    
    public-read var currentState: org.netbeans.javafx.design.DesignState;
    
    // <editor-fold defaultstate="collapsed" desc="Generated Init Block">
    init {
        logout1 = javafx.scene.control.Button {
            visible: true
            layoutX: 58.0
            layoutY: 277.0
            width: 79.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind logout1.width
                height: bind logout1.height
            }
            text: "Logout"
            action: logout1ActionAtloggedInWaiter
        };
        listView = javafx.scene.control.ListView {
            layoutX: 139.0
            layoutY: 15.0
            width: 181.0
            height: 240.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listView.width
                height: bind listView.height
            }
            items: listViewItems
        };
        buttonLogin = javafx.scene.control.Button {
            layoutX: 139.0
            layoutY: 267.0
            width: 181.0
            height: 30.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonLogin.width
                height: bind buttonLogin.height
            }
            text: "Login"
        };
        font = javafx.scene.text.Font {
            size: 26.0
        };
        colorBackground = javafx.scene.paint.Color {
            red: 0.43529412
            green: 0.43529412
            blue: 0.52156866
            opacity: 1.0
        };
        rectangle4 = javafx.scene.shape.Rectangle {
            layoutX: -149.0
            layoutY: -70.0
            fill: colorBackground
            width: 800.0
            height: 500.0
        };
        colorBlack = javafx.scene.paint.Color {
        };
        colorWhite = javafx.scene.paint.Color {
            red: 1.0
            green: 1.0
            blue: 1.0
            opacity: 1.0
        };
        text4 = javafx.scene.text.Text {
            layoutX: 380.0
            layoutY: 233.0
            fill: colorWhite
            stroke: colorBlack
            font: font
            content: "4"
        };
        text3 = javafx.scene.text.Text {
            layoutX: 272.0
            layoutY: 220.0
            fill: colorWhite
            stroke: colorBlack
            font: font
            content: "3"
        };
        text2 = javafx.scene.text.Text {
            layoutX: 368.0
            layoutY: 119.0
            fill: colorWhite
            stroke: colorBlack
            font: font
            content: "2"
        };
        text = javafx.scene.text.Text {
            layoutX: 253.0
            layoutY: 107.0
            effect: null
            fill: colorWhite
            smooth: true
            stroke: colorBlack
            font: font
            content: "1"
        };
        colorTable = javafx.scene.paint.Color {
            red: 0.38431373
            green: 0.18431373
            blue: 0.0
        };
        innerShadowEffect = javafx.scene.effect.InnerShadow {
            blurType: javafx.scene.effect.BlurType.THREE_PASS_BOX
            choke: 0.7
            color: colorBlack
        };
        rectangle5 = javafx.scene.shape.Rectangle {
            layoutX: 200.0
            layoutY: 36.0
            effect: innerShadowEffect
            fill: colorWhite
            smooth: true
            stroke: colorBackground
            width: 250.0
            height: 250.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        dropShadowEffect = javafx.scene.effect.DropShadow {
        };
        rectangle3 = javafx.scene.shape.Rectangle {
            layoutX: 2.0
            layoutY: 2.0
            effect: dropShadowEffect
            fill: colorBackground
            stroke: colorBlack
            x: -2.0
            y: -2.0
            width: 472.0
            height: 312.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        login = javafx.scene.layout.Panel {
            layoutX: 2.0
            layoutY: 2.0
            width: 472.0
            height: 312.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind login.width
                height: bind login.height
            }
            content: [ rectangle3, listView, buttonLogin, ]
        };
        circle4 = javafx.scene.shape.Circle {
            layoutX: 387.0
            layoutY: 224.0
            effect: dropShadowEffect
            fill: colorTable
            stroke: colorBlack
            radius: 25.0
        };
        circle3 = javafx.scene.shape.Circle {
            layoutX: 279.0
            layoutY: 211.0
            effect: dropShadowEffect
            fill: colorTable
            stroke: colorBlack
            radius: 25.0
        };
        circle2 = javafx.scene.shape.Circle {
            layoutX: 375.0
            layoutY: 111.0
            effect: dropShadowEffect
            fill: colorTable
            stroke: colorBlack
            radius: 25.0
        };
        circle = javafx.scene.shape.Circle {
            layoutX: 260.0
            layoutY: 98.0
            effect: dropShadowEffect
            fill: colorTable
            stroke: colorBlack
            radius: 25.0
        };
        rectangle2 = javafx.scene.shape.Rectangle {
            layoutX: 0.0
            layoutY: 2.0
            effect: dropShadowEffect
            fill: colorBackground
            stroke: colorBlack
            strokeLineCap: javafx.scene.shape.StrokeLineCap.SQUARE
            y: -2.0
            width: 494.0
            height: 319.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        waiterTables = javafx.scene.layout.Panel {
            layoutX: -40.0
            layoutY: 0.0
            width: 494.0
            height: 320.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind waiterTables.width
                height: bind waiterTables.height
            }
            content: [ rectangle2, logout1, rectangle5, circle, text, circle2, text2, circle3, text3, circle4, text4, ]
        };
        rectangle = javafx.scene.shape.Rectangle {
            layoutX: 0.0
            layoutY: 2.0
            effect: dropShadowEffect
            fill: colorBackground
            stroke: colorBlack
            x: 0.0
            y: -2.0
            width: 494.0
            height: 319.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        panel2 = javafx.scene.layout.Panel {
            layoutX: -20.0
            layoutY: 0.0
            width: 494.0
            height: 320.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind panel2.width
                height: bind panel2.height
            }
            content: [ rectangle, ]
        };
        scene = javafx.scene.Scene {
            width: 480.0
            height: 320.0
            content: javafx.scene.layout.Panel {
                content: getDesignRootNodes ()
            }
        };
        
        currentState = org.netbeans.javafx.design.DesignState {
            names: [ "login", "loggedInWaiter", ]
            stateChangeType: org.netbeans.javafx.design.DesignStateChangeType.PAUSE_AND_PLAY_FROM_START
            actual: 0
            createTimeline: function (actual) {
                if (actual == 0) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    rectangle3.layoutX => 2.0 tween javafx.animation.Interpolator.EASEIN,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEIN,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEIN,
                                    login.layoutY => 2.0 tween javafx.animation.Interpolator.EASEIN,
                                ]
                                action: function() {
                                    panel2.visible = true;
                                    buttonLogin.text = "Login";
                                    buttonLogin.action = buttonActionAtlogin;
                                }
                            }
                        ]
                    }
                } else if (actual == 1) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    rectangle3.layoutX => 4.0 tween javafx.animation.Interpolator.EASEOUT,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEOUT,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEOUT,
                                    login.layoutY => -350.0 tween javafx.animation.Interpolator.EASEOUT,
                                ]
                                action: function() {
                                    panel2.visible = true;
                                    buttonLogin.text = "Login";
                                }
                            }
                        ]
                    }
                } else {
                    null
                }
            }
        }
    }// </editor-fold>
    
    // <editor-fold defaultstate="collapsed" desc="Generated Design Functions">
    public function getDesignRootNodes () : javafx.scene.Node[] {
        [ rectangle4, panel2, waiterTables, login, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }// </editor-fold>//GEN-END:main

    function logout1ActionAtloggedInWaiter(): Void {
        currentState.actual = currentState.findIndex("login");
            }

    var listViewItems: Object[] = Engine.loginList();

    function buttonActionAtlogin(): Void {
        currentState.actual = currentState.findIndex("loggedInWaiter");
            }
};
