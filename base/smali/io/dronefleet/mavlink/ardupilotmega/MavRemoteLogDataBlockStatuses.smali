.class public final enum Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;
.super Ljava/lang/Enum;
.source "MavRemoteLogDataBlockStatuses.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

.field public static final enum MAV_REMOTE_LOG_DATA_BLOCK_ACK:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum MAV_REMOTE_LOG_DATA_BLOCK_NACK:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    const/4 v1, 0x0

    const-string v2, "MAV_REMOTE_LOG_DATA_BLOCK_NACK"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;->MAV_REMOTE_LOG_DATA_BLOCK_NACK:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    const/4 v2, 0x1

    const-string v3, "MAV_REMOTE_LOG_DATA_BLOCK_ACK"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;->MAV_REMOTE_LOG_DATA_BLOCK_ACK:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    .line 9
    sget-object v3, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;->MAV_REMOTE_LOG_DATA_BLOCK_NACK:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    aput-object v3, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;->MAV_REMOTE_LOG_DATA_BLOCK_ACK:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockStatuses;

    return-object v0
.end method