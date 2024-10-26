.class public final enum Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;
.super Ljava/lang/Enum;
.source "GoproRequestStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

.field public static final enum GOPRO_REQUEST_FAILED:Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum GOPRO_REQUEST_SUCCESS:Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    const/4 v1, 0x0

    const-string v2, "GOPRO_REQUEST_SUCCESS"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;->GOPRO_REQUEST_SUCCESS:Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    const/4 v2, 0x1

    const-string v3, "GOPRO_REQUEST_FAILED"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;->GOPRO_REQUEST_FAILED:Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    .line 9
    sget-object v3, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;->GOPRO_REQUEST_SUCCESS:Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    aput-object v3, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;->GOPRO_REQUEST_FAILED:Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/GoproRequestStatus;

    return-object v0
.end method
