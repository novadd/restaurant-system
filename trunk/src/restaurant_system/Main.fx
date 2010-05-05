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

    public-read var loggedId: Integer;

    public-read var rectangle: javafx.scene.shape.Rectangle;//GEN-BEGIN:main
    public-read var listMenu: javafx.scene.control.ListView;
    public-read var listBil: javafx.scene.control.ListView;
    public-read var waiterStolik: javafx.scene.layout.Panel;
    public-read var rectangle2: javafx.scene.shape.Rectangle;
    public-read var table1: javafx.scene.shape.Circle;
    public-read var table2: javafx.scene.shape.Circle;
    public-read var table3: javafx.scene.shape.Circle;
    public-read var table4: javafx.scene.shape.Circle;
    public-read var table5: javafx.scene.shape.Circle;
    public-read var waiterTables: javafx.scene.layout.Panel;
    public-read var rectangle3: javafx.scene.shape.Rectangle;
    public-read var listView: javafx.scene.control.ListView;
    public-read var buttonLogin: javafx.scene.control.Button;
    public-read var login: javafx.scene.layout.Panel;
    public-read var rectangle4: javafx.scene.shape.Rectangle;
    public-read var buttonLogout: javafx.scene.control.Button;
    public-read var logout: javafx.scene.layout.Panel;
    public-read var scene: javafx.scene.Scene;
    public-read var colorBackground: javafx.scene.paint.Color;
    public-read var colorBlack: javafx.scene.paint.Color;
    public-read var dropShadowEffect: javafx.scene.effect.DropShadow;
    
    public-read var currentState: org.netbeans.javafx.design.DesignState;
    
    // <editor-fold defaultstate="collapsed" desc="Generated Init Block">
    init {
        listMenu = javafx.scene.control.ListView {
            layoutX: 111.0
            layoutY: 35.0
            width: 150.0
            height: 232.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listMenu.width
                height: bind listMenu.height
            }
            onMouseClicked: listMenuOnMouseClicked
            items: [ "bu\u0142ka", "chleb", "cola", ]
        };
        listBil = javafx.scene.control.ListView {
            disable: false
            layoutX: 297.0
            layoutY: 35.0
            width: 150.0
            height: 231.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listBil.width
                height: bind listBil.height
            }
            items: [ "a", "q", ]
        };
        table1 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 101.0
            layoutY: 97.0
            radius: 25.0
        };
        table2 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 243.0
            layoutY: 61.0
            radius: 25.0
        };
        table3 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 366.0
            layoutY: 149.0
            radius: 25.0
        };
        table4 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 271.0
            layoutY: 241.0
            radius: 25.0
        };
        table5 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 135.0
            layoutY: 229.0
            radius: 25.0
        };
        listView = javafx.scene.control.ListView {
            layoutX: 139.0
            layoutY: 9.0
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
        buttonLogout = javafx.scene.control.Button {
            layoutX: 133.0
            layoutY: 15.0
            text: "Logout"
            action: buttonLogoutAction
        };
        colorBackground = javafx.scene.paint.Color {
            red: 0.43529412
            green: 0.43529412
            blue: 0.52156866
            opacity: 1.0
        };
        colorBlack = javafx.scene.paint.Color {
        };
        dropShadowEffect = javafx.scene.effect.DropShadow {
        };
        rectangle4 = javafx.scene.shape.Rectangle {
            layoutX: 2.0
            layoutY: 2.0
            effect: dropShadowEffect
            fill: colorBackground
            stroke: colorBlack
            width: 200.0
            height: 150.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        logout = javafx.scene.layout.Panel {
            layoutX: -118.0
            layoutY: 269.0
            width: 145.0
            height: 95.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind logout.width
                height: bind logout.height
            }
            content: [ rectangle4, buttonLogout, ]
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
        rectangle2 = javafx.scene.shape.Rectangle {
            layoutX: 6.0
            layoutY: 1.0
            effect: dropShadowEffect
            fill: colorBackground
            stroke: colorBlack
            strokeLineCap: javafx.scene.shape.StrokeLineCap.SQUARE
            x: -2.0
            y: -2.0
            width: 472.0
            height: 312.0
            arcWidth: 12.0
            arcHeight: 12.0
        };
        waiterTables = javafx.scene.layout.Panel {
            layoutX: 500.0
            layoutY: 2.0
            width: 472.0
            height: 312.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind waiterTables.width
                height: bind waiterTables.height
            }
            content: [ rectangle2, table1, table2, table3, table4, table5, ]
        };
        rectangle = javafx.scene.shape.Rectangle {
            layoutX: 6.0
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
        waiterStolik = javafx.scene.layout.Panel {
            visible: true
            layoutX: 500.0
            layoutY: 2.0
            width: 472.0
            height: 312.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind waiterStolik.width
                height: bind waiterStolik.height
            }
            content: [ rectangle, listMenu, listBil, ]
        };
        scene = javafx.scene.Scene {
            width: 480.0
            height: 320.0
            content: javafx.scene.layout.Panel {
                content: getDesignRootNodes ()
            }
            fill: colorBackground
        };
        
        currentState = org.netbeans.javafx.design.DesignState {
            names: [ "login", "waiterTablePick", "waiterTable", ]
            stateChangeType: org.netbeans.javafx.design.DesignStateChangeType.PAUSE_AND_PLAY_FROM_START
            actual: 0
            createTimeline: function (actual) {
                if (actual == 0) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    waiterStolik.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle2.x => -2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutX => -60.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 11.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 162.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 86.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -112.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 329.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    listView.select (-1);
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
                                    waiterStolik.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle2.x => -2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutX => 101.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 97.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 4.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => -350.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -118.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 269.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    table1.onMouseClicked = table1OnMouseClickedAtwaiterTablePick;
                                    listView.select (-1);
                                    buttonLogin.text = "Login";
                                }
                            }
                        ]
                    }
                } else if (actual == 2) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 1000ms
                                values: [
                                    waiterStolik.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle2.x => -2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutX => 101.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.layoutY => 97.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    table1.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutX => -500.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    waiterTables.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutX => 4.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle3.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    login.layoutY => -350.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -118.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 269.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    listView.select (0);
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
        [ waiterStolik, waiterTables, login, logout, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }// </editor-fold>//GEN-END:main

    function listMenuOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        var length = 0;
        while(listBil.items[length] != null){
                length++;
                }
        listBil.items[length] = "cola";
            }

    function table1OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        currentState.actual = currentState.findIndex("waiterTable");
            }

    function buttonLogoutAction(): Void {
        currentState.actual = currentState.findIndex("login");
        loggedId = -1;
            }

    var listViewItems: Object[] = Engine.loginList();

    function buttonActionAtlogin(): Void {
        loggedId = listView.selectedIndex;
        currentState.actual = currentState.findIndex("waiterTablePick");
            }
};
