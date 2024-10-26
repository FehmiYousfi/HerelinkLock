.class public final enum Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
.super Ljava/lang/Enum;
.source "AccelcalVehiclePos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

.field public static final enum BACK:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum FAILED:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1000000
    .end annotation
.end field

.field public static final enum LEFT:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum LEVEL:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum NOSEDOWN:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum NOSEUP:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum RIGHT:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum SUCCESS:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xffffff
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    const/4 v1, 0x0

    const-string v2, "LEVEL"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->LEVEL:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    const/4 v2, 0x1

    const-string v3, "LEFT"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->LEFT:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    const/4 v3, 0x2

    const-string v4, "RIGHT"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->RIGHT:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    const/4 v4, 0x3

    const-string v5, "NOSEDOWN"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->NOSEDOWN:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    const/4 v5, 0x4

    const-string v6, "NOSEUP"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->NOSEUP:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    const/4 v6, 0x5

    const-string v7, "BACK"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->BACK:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    const/4 v7, 0x6

    const-string v8, "SUCCESS"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->SUCCESS:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    const/4 v8, 0x7

    const-string v9, "FAILED"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->FAILED:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    .line 9
    sget-object v9, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->LEVEL:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->LEFT:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->RIGHT:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->NOSEDOWN:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->NOSEUP:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->BACK:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->SUCCESS:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->FAILED:Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/AccelcalVehiclePos;

    return-object v0
.end method
