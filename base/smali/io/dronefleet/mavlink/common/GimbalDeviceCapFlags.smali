.class public final enum Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
.super Ljava/lang/Enum;
.source "GimbalDeviceCapFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

.field public static final enum HAS_NEUTRAL:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum HAS_PITCH_AXIS:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum HAS_PITCH_FOLLOW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum HAS_PITCH_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum HAS_RETRACT:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum HAS_ROLL_AXIS:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum HAS_ROLL_FOLLOW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum HAS_ROLL_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum HAS_YAW_AXIS:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field

.field public static final enum HAS_YAW_FOLLOW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x200
    .end annotation
.end field

.field public static final enum HAS_YAW_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x400
    .end annotation
.end field

.field public static final enum SUPPORTS_INFINITE_YAW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x800
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/4 v1, 0x0

    const-string v2, "HAS_RETRACT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_RETRACT:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/4 v2, 0x1

    const-string v3, "HAS_NEUTRAL"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_NEUTRAL:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/4 v3, 0x2

    const-string v4, "HAS_ROLL_AXIS"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_ROLL_AXIS:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/4 v4, 0x3

    const-string v5, "HAS_ROLL_FOLLOW"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_ROLL_FOLLOW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/4 v5, 0x4

    const-string v6, "HAS_ROLL_LOCK"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_ROLL_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 45
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/4 v6, 0x5

    const-string v7, "HAS_PITCH_AXIS"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_PITCH_AXIS:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 51
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/4 v7, 0x6

    const-string v8, "HAS_PITCH_FOLLOW"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_PITCH_FOLLOW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/4 v8, 0x7

    const-string v9, "HAS_PITCH_LOCK"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_PITCH_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 64
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/16 v9, 0x8

    const-string v10, "HAS_YAW_AXIS"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_YAW_AXIS:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 71
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/16 v10, 0x9

    const-string v11, "HAS_YAW_FOLLOW"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_YAW_FOLLOW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 77
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/16 v11, 0xa

    const-string v12, "HAS_YAW_LOCK"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_YAW_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 83
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/16 v12, 0xb

    const-string v13, "SUPPORTS_INFINITE_YAW"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->SUPPORTS_INFINITE_YAW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    const/16 v0, 0xc

    new-array v0, v0, [Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    .line 9
    sget-object v13, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_RETRACT:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v13, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_NEUTRAL:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_ROLL_AXIS:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_ROLL_FOLLOW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_ROLL_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_PITCH_AXIS:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_PITCH_FOLLOW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_PITCH_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_YAW_AXIS:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_YAW_FOLLOW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->HAS_YAW_LOCK:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->SUPPORTS_INFINITE_YAW:Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    aput-object v1, v0, v12

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->$VALUES:[Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->$VALUES:[Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/GimbalDeviceCapFlags;

    return-object v0
.end method
