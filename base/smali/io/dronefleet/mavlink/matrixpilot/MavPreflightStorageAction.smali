.class public final enum Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;
.super Ljava/lang/Enum;
.source "MavPreflightStorageAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

.field public static final enum MAV_PFS_CMD_CLEAR_ALL:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum MAV_PFS_CMD_CLEAR_SPECIFIC:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum MAV_PFS_CMD_DO_NOTHING:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum MAV_PFS_CMD_READ_ALL:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum MAV_PFS_CMD_READ_SPECIFIC:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum MAV_PFS_CMD_WRITE_ALL:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum MAV_PFS_CMD_WRITE_SPECIFIC:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    const/4 v1, 0x0

    const-string v2, "MAV_PFS_CMD_READ_ALL"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_READ_ALL:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    const/4 v2, 0x1

    const-string v3, "MAV_PFS_CMD_WRITE_ALL"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_WRITE_ALL:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    const/4 v3, 0x2

    const-string v4, "MAV_PFS_CMD_CLEAR_ALL"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_CLEAR_ALL:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    const/4 v4, 0x3

    const-string v5, "MAV_PFS_CMD_READ_SPECIFIC"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_READ_SPECIFIC:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    const/4 v5, 0x4

    const-string v6, "MAV_PFS_CMD_WRITE_SPECIFIC"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_WRITE_SPECIFIC:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    const/4 v6, 0x5

    const-string v7, "MAV_PFS_CMD_CLEAR_SPECIFIC"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_CLEAR_SPECIFIC:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    const/4 v7, 0x6

    const-string v8, "MAV_PFS_CMD_DO_NOTHING"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_DO_NOTHING:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    const/4 v0, 0x7

    new-array v0, v0, [Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    .line 9
    sget-object v8, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_READ_ALL:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    aput-object v8, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_WRITE_ALL:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_CLEAR_ALL:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_READ_SPECIFIC:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_WRITE_SPECIFIC:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_CLEAR_SPECIFIC:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->MAV_PFS_CMD_DO_NOTHING:Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    aput-object v1, v0, v7

    sput-object v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->$VALUES:[Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->$VALUES:[Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/matrixpilot/MavPreflightStorageAction;

    return-object v0
.end method
