.class public final enum Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
.super Ljava/lang/Enum;
.source "AttitudeTargetTypemask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

.field public static final enum ATTITUDE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum BODY_PITCH_RATE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum BODY_ROLL_RATE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum BODY_YAW_RATE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum THROTTLE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    const/4 v1, 0x0

    const-string v2, "BODY_ROLL_RATE_IGNORE"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->BODY_ROLL_RATE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    .line 21
    new-instance v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    const/4 v2, 0x1

    const-string v3, "BODY_PITCH_RATE_IGNORE"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->BODY_PITCH_RATE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    .line 27
    new-instance v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    const/4 v3, 0x2

    const-string v4, "BODY_YAW_RATE_IGNORE"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->BODY_YAW_RATE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    .line 33
    new-instance v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    const/4 v4, 0x3

    const-string v5, "THROTTLE_IGNORE"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->THROTTLE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    const/4 v5, 0x4

    const-string v6, "ATTITUDE_IGNORE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->ATTITUDE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    .line 10
    sget-object v6, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->BODY_ROLL_RATE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    aput-object v6, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->BODY_PITCH_RATE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->BODY_YAW_RATE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->THROTTLE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->ATTITUDE_IGNORE:Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    aput-object v1, v0, v5

    sput-object v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->$VALUES:[Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
    .locals 1

    .line 10
    const-class v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;
    .locals 1

    .line 10
    sget-object v0, Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->$VALUES:[Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/AttitudeTargetTypemask;

    return-object v0
.end method
