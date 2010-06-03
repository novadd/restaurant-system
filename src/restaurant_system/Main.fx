/*
 * Main.fx
 *
 * Created on 2010-05-01, 20:27:36
 */

package restaurant_system;

import java.util.ArrayList;

/**
 * @author Wojtek
 */
public class Main {

    public-read var loggedId: Integer;
    public-read var billId: Integer;
    var multiplier: Integer = -1;
    var listLoginItems: Object[] = Engine.loginList();
    var listLoginIDItems: Integer[] = Engine.loginListID();
    var listMenuItems: Object[] = Engine.menuList();
    var listMenuIDItems: Object[] = Engine.menuListID();
    var activeTableNr: Integer;
    var activeBillNr: Object;

    public-read var rectangle: javafx.scene.shape.Rectangle;//GEN-BEGIN:main
    public-read var listMenu: javafx.scene.control.ListView;
    public-read var listBill: javafx.scene.control.ListView;
    public-read var listMenuID: javafx.scene.control.ListView;
    public-read var billNr: javafx.scene.control.Label;
    public-read var previousBill: javafx.scene.control.Button;
    public-read var nextBill: javafx.scene.control.Button;
    public-read var buttonBillFinalize: javafx.scene.control.Button;
    public-read var button1: javafx.scene.control.Button;
    public-read var button2: javafx.scene.control.Button;
    public-read var button3: javafx.scene.control.Button;
    public-read var button4: javafx.scene.control.Button;
    public-read var button5: javafx.scene.control.Button;
    public-read var button6: javafx.scene.control.Button;
    public-read var button7: javafx.scene.control.Button;
    public-read var button8: javafx.scene.control.Button;
    public-read var button9: javafx.scene.control.Button;
    public-read var button0: javafx.scene.control.Button;
    public-read var toggleButtonLocked: javafx.scene.control.ToggleButton;
    public-read var buttonC: javafx.scene.control.Button;
    public-read var labelCount: javafx.scene.control.Label;
    public-read var waiterTable: javafx.scene.layout.Panel;
    public-read var rectangle2: javafx.scene.shape.Rectangle;
    public-read var table1: javafx.scene.shape.Circle;
    public-read var table2: javafx.scene.shape.Circle;
    public-read var table3: javafx.scene.shape.Circle;
    public-read var table4: javafx.scene.shape.Circle;
    public-read var table5: javafx.scene.shape.Circle;
    public-read var waiterTables: javafx.scene.layout.Panel;
    public-read var rectangle3: javafx.scene.shape.Rectangle;
    public-read var listLogin: javafx.scene.control.ListView;
    public-read var buttonLogin: javafx.scene.control.Button;
    public-read var listLoginID: javafx.scene.control.ListView;
    public-read var debugger: javafx.scene.control.Label;
    public-read var login: javafx.scene.layout.Panel;
    public-read var rectangle4: javafx.scene.shape.Rectangle;
    public-read var buttonBack: javafx.scene.control.Button;
    public-read var buttonLogout: javafx.scene.control.Button;
    public-read var labelLogin: javafx.scene.control.Label;
    public-read var logout: javafx.scene.layout.Panel;
    public-read var scene: javafx.scene.Scene;
    public-read var colorBackground: javafx.scene.paint.Color;
    public-read var colorBlack: javafx.scene.paint.Color;
    public-read var dropShadowEffect: javafx.scene.effect.DropShadow;
    public-read var fontStandard: javafx.scene.text.Font;
    public-read var colorGreen: javafx.scene.paint.Color;
    public-read var colorYellow: javafx.scene.paint.Color;
    public-read var colorRed: javafx.scene.paint.Color;
    
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
            items: listMenuItems
        };
        listBill = javafx.scene.control.ListView {
            disable: false
            layoutX: 297.0
            layoutY: 35.0
            width: 150.0
            height: 231.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listBill.width
                height: bind listBill.height
            }
            items: null
        };
        listMenuID = javafx.scene.control.ListView {
            visible: true
            layoutX: 576.0
            layoutY: 54.0
            width: 62.0
            height: 79.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listMenuID.width
                height: bind listMenuID.height
            }
            items: listMenuIDItems
        };
        previousBill = javafx.scene.control.Button {
            layoutX: 323.0
            layoutY: 3.0
            text: "<"
        };
        nextBill = javafx.scene.control.Button {
            layoutX: 390.0
            layoutY: 3.0
            text: ">"
        };
        buttonBillFinalize = javafx.scene.control.Button {
            layoutX: 392.0
            layoutY: 273.0
            text: "Finalize"
            action: buttonBillFinalizeAction
        };
        button1 = javafx.scene.control.Button {
            layoutX: 30.0
            layoutY: 79.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button1.width
                height: bind button1.height
            }
            onMouseClicked: button1OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "1"
        };
        button2 = javafx.scene.control.Button {
            layoutX: 53.0
            layoutY: 79.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button2.width
                height: bind button2.height
            }
            onMouseClicked: button2OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "2"
        };
        button3 = javafx.scene.control.Button {
            layoutX: 76.0
            layoutY: 79.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button3.width
                height: bind button3.height
            }
            onMouseClicked: button3OnMouseClicked
            text: "3"
        };
        button4 = javafx.scene.control.Button {
            layoutX: 30.0
            layoutY: 106.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button4.width
                height: bind button4.height
            }
            onMouseClicked: button4OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "4"
        };
        button5 = javafx.scene.control.Button {
            layoutX: 53.0
            layoutY: 106.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button5.width
                height: bind button5.height
            }
            onMouseClicked: button5OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "5"
        };
        button6 = javafx.scene.control.Button {
            layoutX: 76.0
            layoutY: 106.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button6.width
                height: bind button6.height
            }
            onMouseClicked: button6OnMouseClicked
            text: "6"
        };
        button7 = javafx.scene.control.Button {
            layoutX: 30.0
            layoutY: 133.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button7.width
                height: bind button7.height
            }
            onMouseClicked: button7OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "7"
        };
        button8 = javafx.scene.control.Button {
            layoutX: 53.0
            layoutY: 133.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button8.width
                height: bind button8.height
            }
            onMouseClicked: button8OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "8"
        };
        button9 = javafx.scene.control.Button {
            layoutX: 76.0
            layoutY: 133.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button9.width
                height: bind button9.height
            }
            onMouseClicked: button9OnMouseClicked
            text: "9"
        };
        button0 = javafx.scene.control.Button {
            layoutX: 53.0
            layoutY: 160.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button0.width
                height: bind button0.height
            }
            onMouseClicked: button0OnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "0"
        };
        toggleButtonLocked = javafx.scene.control.ToggleButton {
            layoutX: 30.0
            layoutY: 160.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind toggleButtonLocked.width
                height: bind toggleButtonLocked.height
            }
            translateX: 0.0
            translateY: 0.0
            text: "L"
        };
        buttonC = javafx.scene.control.Button {
            layoutX: 76.0
            layoutY: 160.0
            width: 17.0
            height: 21.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonC.width
                height: bind buttonC.height
            }
            onMouseClicked: buttonCOnMouseClicked
            translateX: 0.0
            translateY: 0.0
            text: "C"
        };
        listLogin = javafx.scene.control.ListView {
            layoutX: 139.0
            layoutY: 9.0
            width: 181.0
            height: 240.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listLogin.width
                height: bind listLogin.height
            }
            items: listLoginItems
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
        listLoginID = javafx.scene.control.ListView {
            layoutX: 575.0
            layoutY: 397.0
            width: 52.0
            height: 76.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listLoginID.width
                height: bind listLoginID.height
            }
            items: listLoginIDItems
        };
        debugger = javafx.scene.control.Label {
            layoutX: 71.0
            layoutY: 351.0
            width: 361.0
            height: 46.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind debugger.width
                height: bind debugger.height
            }
            text: "Label"
        };
        buttonBack = javafx.scene.control.Button {
            layoutX: 133.0
            layoutY: -15.0
            width: 58.0
            height: 24.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind buttonBack.width
                height: bind buttonBack.height
            }
            text: "Back"
            action: buttonBackAction
        };
        buttonLogout = javafx.scene.control.Button {
            layoutX: 133.0
            layoutY: 15.0
            text: "Logout"
            action: buttonLogoutAction
        };
        labelLogin = javafx.scene.control.Label {
            layoutX: 133.0
            layoutY: -35.0
            text: "logged as"
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
            layoutY: -39.0
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
            content: [ rectangle4, buttonBack, buttonLogout, labelLogin, ]
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
            content: [ rectangle3, listLogin, buttonLogin, listLoginID, debugger, ]
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
        fontStandard = javafx.scene.text.Font {
            size: 18.0
        };
        labelCount = javafx.scene.control.Label {
            visible: true
            layoutX: 38.0
            layoutY: 41.0
            width: 47.0
            height: 22.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind labelCount.width
                height: bind labelCount.height
            }
            text: "1 x"
            font: fontStandard
            hpos: javafx.geometry.HPos.CENTER
            vpos: javafx.geometry.VPos.CENTER
            graphicHPos: javafx.geometry.HPos.CENTER
            graphicVPos: javafx.geometry.VPos.CENTER
            textFill: colorBlack
        };
        billNr = javafx.scene.control.Label {
            layoutX: 357.0
            layoutY: 3.0
            text: "1/1"
            font: fontStandard
        };
        waiterTable = javafx.scene.layout.Panel {
            visible: true
            layoutX: 500.0
            layoutY: 2.0
            width: 472.0
            height: 312.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind waiterTable.width
                height: bind waiterTable.height
            }
            content: [ rectangle, listMenu, listBill, listMenuID, billNr, previousBill, nextBill, buttonBillFinalize, button1, button2, button3, button4, button5, button6, button7, button8, button9, button0, toggleButtonLocked, buttonC, labelCount, ]
        };
        colorGreen = javafx.scene.paint.Color {
            red: 0.0
            green: 1.0
            blue: 0.0
        };
        table4 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 271.0
            layoutY: 241.0
            fill: colorGreen
            stroke: colorBlack
            radius: 25.0
        };
        colorYellow = javafx.scene.paint.Color {
            red: 1.0
            green: 1.0
            blue: 0.0
        };
        table5 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 135.0
            layoutY: 229.0
            fill: colorYellow
            stroke: colorBlack
            radius: 25.0
        };
        table3 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 366.0
            layoutY: 149.0
            fill: colorYellow
            stroke: colorBlack
            radius: 25.0
        };
        colorRed = javafx.scene.paint.Color {
            red: 1.0
        };
        table2 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 243.0
            layoutY: 61.0
            fill: colorRed
            stroke: colorBlack
            radius: 25.0
        };
        table1 = javafx.scene.shape.Circle {
            visible: true
            layoutX: 101.0
            layoutY: 97.0
            fill: colorRed
            stroke: colorBlack
            radius: 25.0
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
        scenePre_CreationCode();
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
                                    waiterTable.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
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
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => 31.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => 62.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => 9.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -112.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 329.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    listLogin.select (-1);
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
                                    waiterTable.layoutX => 500.0 tween javafx.animation.Interpolator.EASEBOTH,
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
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => -39.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => -15.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => 15.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => -35.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -118.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 269.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    table1.onMouseClicked = table1OnMouseClickedAtwaiterTablePick;
                                    table2.onMouseClicked = table2OnMouseClickedAtwaiterTablePick;
                                    table3.onMouseClicked = table3OnMouseClickedAtwaiterTablePick;
                                    table4.onMouseClicked = table4OnMouseClickedAtwaiterTablePick;
                                    table5.onMouseClicked = table5OnMouseClickedAtwaiterTablePick;
                                    listLogin.select (-1);
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
                                    waiterTable.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
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
                                    rectangle4.layoutX => 2.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    rectangle4.layoutY => -39.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonBack.layoutY => -15.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    buttonLogout.layoutY => 15.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutX => 133.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    labelLogin.layoutY => -35.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutX => -118.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    logout.layoutY => 269.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                                action: function() {
                                    listBill.onMouseClicked = listBillOnMouseClickedAtwaiterTable;
                                    listLogin.select (0);
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
        [ waiterTable, waiterTables, login, logout, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }// </editor-fold>//GEN-END:main

    // <editor-fold defaultstate="collapsed" desc="Empty fold">

    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="General functions">

    function scenePre_CreationCode(): Void {
        Engine.createDB();
    }

    function buttonBackAction(): Void {
        currentState.previous();
        if(loggedId != -1){
            colourTable(1,table1);
            colourTable(2,table2);
            colourTable(3,table3);
            colourTable(4,table4);
            colourTable(5,table5);
        }
    }

    function clearList(list: javafx.scene.control.ListView){
        while(list.items[0] != null){
            list.items[0] = null;
        }
    }

    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="NumpadFunctions">
    function numberClicked(i: Integer){
        if (multiplier == -1){
            multiplier = i;
            labelCount.text = "{multiplier} x";
        }
        else {
            multiplier = 10*multiplier + i;
            labelCount.text = "{multiplier} x";
        }
    }

    function button1OnMouseClicked (event: javafx .scene.input.MouseEvent): Void {
        numberClicked(1);
    }

    function button2OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(2);
    }

    function button3OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(3);
    }

    function button4OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(4);
    }

    function button5OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(5);
    }

    function button6OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(6);
    }

    function button7OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(7);
    }

    function button8OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(8);
    }

    function button9OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(9);
    }

    function button0OnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        numberClicked(0);
    }

    function buttonCOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
        multiplier = -1;
        labelCount.text = "1 x";
    }
    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Bill handling">

    function listMenuOnMouseClicked(event: javafx.scene.input.MouseEvent): Void {
    // ---------------------------------------------------
    // This function adds an item selected from the menu
    // to the last slot of an active bill
    // ---------------------------------------------------
        var length: Integer = 0;
        var i: Integer = 0;
        while(listBill.items[length] != null){
            length++;
        }
        if(length == 0){
            //listBill.items[length] = Engine.decodeMenuID(listMenuID.items[listMenu.selectedIndex]);
            activeBillNr = Engine.addToBill(null, listMenuID.items[listMenu.selectedIndex], 0, loggedId, 1);
            if(multiplier > 1){
                Engine.addToBill(activeBillNr, listMenuID.items[listMenu.selectedIndex], 0, loggedId, multiplier - 1);
            }
            Engine.addBillToTable(activeTableNr, activeBillNr);
            clearList(listBill);
            i=0;
            while(i<Engine.printBill(activeBillNr).size()){
                listBill.items[i] = Engine.printBill(activeBillNr).get(i);
                i++;
            }
            //debugger.text = "activeTableNr {activeTableNr}, activeBillNr {activeBillNr}";
        }
        //debugger.text = "activeTableNr {activeTableNr}, activeBillNr {activeBillNr}";
        //listBill.items[length] = Engine.decodeMenuID(listMenuID.items[listMenu.selectedIndex]);
        else {
            Engine.addToBill(activeBillNr, listMenuID.items[listMenu.selectedIndex], 0, loggedId, multiplier);
            clearList(listBill);
            i = 0;
            while(i<Engine.printBill(activeBillNr).size()){
                listBill.items[i] = Engine.printBill(activeBillNr).get(i);
                i++
            }
        }
        if (not toggleButtonLocked.selected){
            multiplier = -1;
            labelCount.text = "1 x";
        }
    }

    function listBillOnMouseClickedAtwaiterTable(event: javafx.scene.input.MouseEvent): Void {
    // ---------------------------------------------------
    // This function deletes selected item from the bill
    // ---------------------------------------------------
        listBill.items[listBill.selectedIndex] = null;
        Engine.removeFromBill(activeBillNr, listBill.items[listBill.selectedIndex], 0);
    }
    
    function buttonBillFinalizeAction(): Void {
        Engine.removeBillFromTable(activeTableNr, activeBillNr);
        clearList(listBill);
    }
    
    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Table Pick">
    function pickTable(nr: Integer){
    // ---------------------------------------------------
    // This function handles waiter table selection
    // green - free table -> click: opens a new bill
    // yellow - logged in waiter's table -> click: opens
    //                                      existing bill
    // red - other waiter's table -> click: shows the name
    //                               of the waiter
    // ---------------------------------------------------
        if(Engine.billsListFromTable(nr).isEmpty()) {
            currentState.actual = currentState.findIndex("waiterTable");
            activeTableNr = nr;
            clearList(listBill);
        }
        else {
            if(Engine.checkWhoServesTable(nr)==loggedId) {
                currentState.actual = currentState.findIndex("waiterTable");
                activeTableNr = nr;
                activeBillNr = Engine.billsListFromTable(nr).get(0);
                clearList(listBill);
                var i: Integer;
                while(i<Engine.printBill(activeBillNr).size()){
                    listBill.items[i] = Engine.printBill(activeBillNr).get(i);
                    i++
                }
            }
            else{

            }
        }
    }

    function table1OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        pickTable(1);
    }

    function table2OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        pickTable(2);
    }

    function table3OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        pickTable(3);
    }

    function table4OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        pickTable(4);
    }

    function table5OnMouseClickedAtwaiterTablePick(event: javafx.scene.input.MouseEvent): Void {
        pickTable(5);
    }
    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Login/Logout + table coloring">
    function buttonLogoutAction(): Void {
    // ---------------------------------------------------
    // This function logs out current user
    // ---------------------------------------------------
        currentState.actual = currentState.findIndex("login");
        loggedId = -1;
    }

    function colourTable(nr: Integer, table:javafx.scene.shape.Circle){
        if(Engine.billsListFromTable(nr).isEmpty()) {
            table.fill = colorGreen;
        }
        else {
            if(Engine.checkWhoServesTable(nr)==loggedId) {
                table.fill = colorYellow;
            }
            else{
                table.fill = colorRed;
            }
        }
    }

    function buttonActionAtlogin(): Void {
    // ---------------------------------------------------
    // This function logs in a selected user. In a normal
    // restaurant this would be handeled by a electro-
    // magnetic card of some sort.
    // ---------------------------------------------------
        
        loggedId = -1;
        loggedId = Engine.loginListID()[listLogin.selectedIndex];

        //loggedId = listLoginID.selectedItem (listLogin.selectedIndex);
        if(loggedId != -1){
            labelLogin.text = Engine.decodeLoginIDSurname(listLoginID.items[listLogin.selectedIndex]);
            currentState.actual = currentState.findIndex("waiterTablePick");
            colourTable(1,table1);
            colourTable(2,table2);
            colourTable(3,table3);
            colourTable(4,table4);
            colourTable(5,table5);
        };
    }
    // </editor-fold>

    // <editor-fold defaultstate="collapsed" desc="Bin">

//    function printList(oldList: ArrayList){
//        var newList: ArrayList;
//        var countList: Integer[];
//        var onList: Boolean;
//        var i: Integer = 0;
//        var j: Integer = 0;
//        var finalList: ArrayList;
//        //var newListSize: Integer = 0;
//        while(i < oldList.size()){
//            j = 0;
//            onList = false;
//            while (j<newList.size()){
//                if(oldList.get(i) == newList.get(j)){
//                    countList[j]++;
//                    onList = true;
//                }
//            }
//            if(not onList){
//                newList.add(oldList.get(i));
//                countList[newList.size()] = 1;
//            }
//        }
//        j = 0;
//        while (j<newList.size()){
//            finalList.add("{countList[j].toString()}x {newList.get(j).toString()}");
//        }
//        return finalList;
//    }
    // </editor-fold>
};
