MODULE RsTempModule
    LOCAL CONST robtarget Right_HomePose:=[[89.387946422,-156.622117956,842.913470217],[0.066010726,-0.842420918,-0.111214912,-0.523068661],[0,0,0,4],[-101.964427132,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL PERS tooldata Servo:=[TRUE,[[0,0,114.2],[1,0,0,0]],[0.24,[8.2,12.5,48.1],[1,0,0,0],0.00022,0.00024,0.00009]];
    LOCAL PERS wobjdata RightArm:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    LOCAL CONST robtarget Right_StartPose:=[[127.970106572,-268.540442898,849.999919372],[0.110773358,0.282535603,0.887093552,0.347804438],[0,0,0,0],[-91.873037584,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget ApproachTriangle:=[[0,0,100],[0,0,0.923879533,0.382683432],[0,0,0,0],[-90.504149971,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL PERS wobjdata TriangleObj:=[FALSE,TRUE,"",[[386.53,-205.1,750],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    LOCAL CONST robtarget PickTriangle:=[[0,0,-10],[0,0,0.923879533,0.382683432],[0,0,0,0],[-90.504149971,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget HoverOverTriangle:=[[24.71,-24.35,130],[0,0,0.923879533,0.382683432],[0,0,0,0],[-90.504149971,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL PERS wobjdata RightMainHolder:=[FALSE,TRUE,"",[[361.421,0,720],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    LOCAL CONST robtarget PlaceTriangle:=[[24.71,-24.35,20],[0,0,0.923879533,0.382683432],[0,0,0,0],[-90.504149971,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget ApproachCshape:=[[0,0,100],[0,0,0.923879533,0.382683432],[0,0,0,0],[-90.504149971,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL PERS wobjdata CshapeObj:=[FALSE,TRUE,"",[[336.527,-210.1,750],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    LOCAL CONST robtarget PickCshape:=[[0,0,-10],[0,0,0.923879533,0.382683432],[0,0,0,0],[-90.504149971,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget PlaceCshape:=[[-25.29,-29.351,25],[0,0,0.923879533,0.382683432],[0,0,0,0],[-90.504149971,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget HoverOverCshape:=[[-25.29,-29.351,130],[0,0,0.923879533,0.382683432],[0,0,0,0],[-90.504149971,9E+09,9E+09,9E+09,9E+09,9E+09]];
PROC RsTempPath()
        ActUnit ROB_R_7;
        ConfL\On;
        ConfJ\On;
        MoveJ Right_HomePose,vmax,fine,Servo\WObj:=RightArm;
        ConfL\Off;
        ConfJ\Off;
        MoveJ Right_StartPose,vmax,fine,Servo\WObj:=RightArm;
        MoveJ ApproachTriangle,vmax,fine,Servo\WObj:=TriangleObj;
        MoveL PickTriangle,vmax,fine,Servo\WObj:=TriangleObj;
        WaitTime 1;
        MoveL ApproachTriangle,vmax,fine,Servo\WObj:=TriangleObj;
        MoveL HoverOverTriangle,vmax,fine,Servo\WObj:=RightMainHolder;
        MoveL PlaceTriangle,vmax,fine,Servo\WObj:=RightMainHolder;
        WaitTime 1;
        MoveL HoverOverTriangle,vmax,fine,Servo\WObj:=RightMainHolder;
        MoveL ApproachCshape,vmax,fine,Servo\WObj:=CshapeObj;
        MoveL PickCshape,vmax,fine,Servo\WObj:=CshapeObj;
        WaitTime 1;
        MoveL ApproachCshape,vmax,fine,Servo\WObj:=CshapeObj;
        MoveJ PlaceCshape,vmax,fine,Servo\WObj:=RightMainHolder;
        WaitTime 1;
        MoveJ HoverOverCshape,vmax,fine,Servo\WObj:=RightMainHolder;
        MoveJ Right_StartPose,vmax,fine,Servo\WObj:=RightArm;
        MoveJ Right_HomePose,vmax,fine,Servo\WObj:=RightArm;
        SetSysData wobj0;
        SetSysData tool0;
ENDPROC

ENDMODULE