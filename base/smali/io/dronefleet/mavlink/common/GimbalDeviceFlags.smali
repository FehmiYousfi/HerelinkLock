.class public final enum Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
.super Ljava/lang/Enum;
.source "GimbalDeviceFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/GimbalDeviceFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

.field public static final enum NEUTRAL:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum PITCH_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum RETRACT:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum ROLL_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum YAW_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    const/4 v1, 0x0

    const-string v2, "RETRACT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->RETRACT:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    .line 21
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    const/4 v2, 0x1

    const-string v3, "NEUTRAL"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->NEUTRAL:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    .line 28
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    const/4 v3, 0x2

    const-string v4, "ROLL_LOCK"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->ROLL_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    .line 35
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    const/4 v4, 0x3

    const-string v5, "PITCH_LOCK"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->PITCH_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    const/4 v5, 0x4

    const-string v6, "YAW_LOCK"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->YAW_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    .line 9
    sget-object v6, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->RETRACT:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    aput-object v6, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->NEUTRAL:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->ROLL_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->PITCH_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->YAW_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    aput-object v1, v0, v5

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->$VALUES:[Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/GimbalDeviceFlags;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->$VALUES:[Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/GimbalDeviceFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/GimbalDeviceFlags;

    return-object v0
.end method
