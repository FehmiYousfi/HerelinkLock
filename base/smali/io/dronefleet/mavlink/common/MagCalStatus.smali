.class public final enum Lio/dronefleet/mavlink/common/MagCalStatus;
.super Ljava/lang/Enum;
.source "MagCalStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MagCalStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MagCalStatus;

.field public static final enum MAG_CAL_BAD_ORIENTATION:Lio/dronefleet/mavlink/common/MagCalStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum MAG_CAL_BAD_RADIUS:Lio/dronefleet/mavlink/common/MagCalStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum MAG_CAL_FAILED:Lio/dronefleet/mavlink/common/MagCalStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum MAG_CAL_NOT_STARTED:Lio/dronefleet/mavlink/common/MagCalStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum MAG_CAL_RUNNING_STEP_ONE:Lio/dronefleet/mavlink/common/MagCalStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum MAG_CAL_RUNNING_STEP_TWO:Lio/dronefleet/mavlink/common/MagCalStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum MAG_CAL_SUCCESS:Lio/dronefleet/mavlink/common/MagCalStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum MAG_CAL_WAITING_TO_START:Lio/dronefleet/mavlink/common/MagCalStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MagCalStatus;

    const/4 v1, 0x0

    const-string v2, "MAG_CAL_NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MagCalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_NOT_STARTED:Lio/dronefleet/mavlink/common/MagCalStatus;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MagCalStatus;

    const/4 v2, 0x1

    const-string v3, "MAG_CAL_WAITING_TO_START"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MagCalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_WAITING_TO_START:Lio/dronefleet/mavlink/common/MagCalStatus;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MagCalStatus;

    const/4 v3, 0x2

    const-string v4, "MAG_CAL_RUNNING_STEP_ONE"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MagCalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_RUNNING_STEP_ONE:Lio/dronefleet/mavlink/common/MagCalStatus;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MagCalStatus;

    const/4 v4, 0x3

    const-string v5, "MAG_CAL_RUNNING_STEP_TWO"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MagCalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_RUNNING_STEP_TWO:Lio/dronefleet/mavlink/common/MagCalStatus;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MagCalStatus;

    const/4 v5, 0x4

    const-string v6, "MAG_CAL_SUCCESS"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MagCalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_SUCCESS:Lio/dronefleet/mavlink/common/MagCalStatus;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/MagCalStatus;

    const/4 v6, 0x5

    const-string v7, "MAG_CAL_FAILED"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MagCalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_FAILED:Lio/dronefleet/mavlink/common/MagCalStatus;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/MagCalStatus;

    const/4 v7, 0x6

    const-string v8, "MAG_CAL_BAD_ORIENTATION"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MagCalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_BAD_ORIENTATION:Lio/dronefleet/mavlink/common/MagCalStatus;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/MagCalStatus;

    const/4 v8, 0x7

    const-string v9, "MAG_CAL_BAD_RADIUS"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MagCalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_BAD_RADIUS:Lio/dronefleet/mavlink/common/MagCalStatus;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MagCalStatus;

    .line 9
    sget-object v9, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_NOT_STARTED:Lio/dronefleet/mavlink/common/MagCalStatus;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_WAITING_TO_START:Lio/dronefleet/mavlink/common/MagCalStatus;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_RUNNING_STEP_ONE:Lio/dronefleet/mavlink/common/MagCalStatus;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_RUNNING_STEP_TWO:Lio/dronefleet/mavlink/common/MagCalStatus;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_SUCCESS:Lio/dronefleet/mavlink/common/MagCalStatus;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_FAILED:Lio/dronefleet/mavlink/common/MagCalStatus;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_BAD_ORIENTATION:Lio/dronefleet/mavlink/common/MagCalStatus;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MagCalStatus;->MAG_CAL_BAD_RADIUS:Lio/dronefleet/mavlink/common/MagCalStatus;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/common/MagCalStatus;->$VALUES:[Lio/dronefleet/mavlink/common/MagCalStatus;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MagCalStatus;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MagCalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MagCalStatus;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MagCalStatus;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MagCalStatus;->$VALUES:[Lio/dronefleet/mavlink/common/MagCalStatus;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MagCalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MagCalStatus;

    return-object v0
.end method
