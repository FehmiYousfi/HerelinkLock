.class public final enum Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
.super Ljava/lang/Enum;
.source "GoproCaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

.field public static final enum BURST:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum MULTI_SHOT:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum PHOTO:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum PLAYBACK:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum SETUP:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum TIME_LAPSE:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum UNKNOWN:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xff
    .end annotation
.end field

.field public static final enum VIDEO:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    const/4 v1, 0x0

    const-string v2, "VIDEO"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->VIDEO:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    const/4 v2, 0x1

    const-string v3, "PHOTO"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->PHOTO:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    const/4 v3, 0x2

    const-string v4, "BURST"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->BURST:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    const/4 v4, 0x3

    const-string v5, "TIME_LAPSE"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->TIME_LAPSE:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    const/4 v5, 0x4

    const-string v6, "MULTI_SHOT"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->MULTI_SHOT:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    const/4 v6, 0x5

    const-string v7, "PLAYBACK"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->PLAYBACK:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    const/4 v7, 0x6

    const-string v8, "SETUP"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->SETUP:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->UNKNOWN:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    .line 9
    sget-object v9, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->VIDEO:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->PHOTO:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->BURST:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->TIME_LAPSE:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->MULTI_SHOT:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->PLAYBACK:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->SETUP:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->UNKNOWN:Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/GoproCaptureMode;

    return-object v0
.end method
