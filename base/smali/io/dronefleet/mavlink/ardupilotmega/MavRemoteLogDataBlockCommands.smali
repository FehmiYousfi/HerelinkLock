.class public final enum Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;
.super Ljava/lang/Enum;
.source "MavRemoteLogDataBlockCommands.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

.field public static final enum MAV_REMOTE_LOG_DATA_BLOCK_START:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7ffffffe
    .end annotation
.end field

.field public static final enum MAV_REMOTE_LOG_DATA_BLOCK_STOP:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7ffffffd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    const/4 v1, 0x0

    const-string v2, "MAV_REMOTE_LOG_DATA_BLOCK_STOP"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;->MAV_REMOTE_LOG_DATA_BLOCK_STOP:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    const/4 v2, 0x1

    const-string v3, "MAV_REMOTE_LOG_DATA_BLOCK_START"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;->MAV_REMOTE_LOG_DATA_BLOCK_START:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    .line 9
    sget-object v3, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;->MAV_REMOTE_LOG_DATA_BLOCK_STOP:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    aput-object v3, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;->MAV_REMOTE_LOG_DATA_BLOCK_START:Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/MavRemoteLogDataBlockCommands;

    return-object v0
.end method