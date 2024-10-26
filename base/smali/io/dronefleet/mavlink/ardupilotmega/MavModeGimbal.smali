.class public final enum Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;
.super Ljava/lang/Enum;
.source "MavModeGimbal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

.field public static final enum ACTIVE:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum CALIBRATING_PITCH:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum CALIBRATING_ROLL:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum CALIBRATING_YAW:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum INITIALIZED:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum RATE_CMD_TIMEOUT:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum UNINITIALIZED:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    const/4 v1, 0x0

    const-string v2, "UNINITIALIZED"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->UNINITIALIZED:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    const/4 v2, 0x1

    const-string v3, "CALIBRATING_PITCH"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->CALIBRATING_PITCH:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    const/4 v3, 0x2

    const-string v4, "CALIBRATING_ROLL"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->CALIBRATING_ROLL:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    const/4 v4, 0x3

    const-string v5, "CALIBRATING_YAW"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->CALIBRATING_YAW:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    const/4 v5, 0x4

    const-string v6, "INITIALIZED"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->INITIALIZED:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    .line 45
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    const/4 v6, 0x5

    const-string v7, "ACTIVE"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->ACTIVE:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    const/4 v7, 0x6

    const-string v8, "RATE_CMD_TIMEOUT"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->RATE_CMD_TIMEOUT:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    const/4 v0, 0x7

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    .line 9
    sget-object v8, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->UNINITIALIZED:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    aput-object v8, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->CALIBRATING_PITCH:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->CALIBRATING_ROLL:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->CALIBRATING_YAW:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->INITIALIZED:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->ACTIVE:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->RATE_CMD_TIMEOUT:Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    aput-object v1, v0, v7

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/MavModeGimbal;

    return-object v0
.end method
