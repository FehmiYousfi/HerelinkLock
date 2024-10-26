.class public final enum Lio/dronefleet/mavlink/common/GimbalManagerFlags;
.super Ljava/lang/Enum;
.source "GimbalManagerFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/GimbalManagerFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/GimbalManagerFlags;

.field public static final enum NEUTRAL:Lio/dronefleet/mavlink/common/GimbalManagerFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum PITCH_LOCK:Lio/dronefleet/mavlink/common/GimbalManagerFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum RETRACT:Lio/dronefleet/mavlink/common/GimbalManagerFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum ROLL_LOCK:Lio/dronefleet/mavlink/common/GimbalManagerFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum YAW_LOCK:Lio/dronefleet/mavlink/common/GimbalManagerFlags;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    const/4 v1, 0x0

    const-string v2, "RETRACT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/GimbalManagerFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->RETRACT:Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    .line 21
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    const/4 v2, 0x1

    const-string v3, "NEUTRAL"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/GimbalManagerFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->NEUTRAL:Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    .line 27
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    const/4 v3, 0x2

    const-string v4, "ROLL_LOCK"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/GimbalManagerFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->ROLL_LOCK:Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    .line 33
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    const/4 v4, 0x3

    const-string v5, "PITCH_LOCK"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/GimbalManagerFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->PITCH_LOCK:Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    const/4 v5, 0x4

    const-string v6, "YAW_LOCK"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/GimbalManagerFlags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->YAW_LOCK:Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    .line 10
    sget-object v6, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->RETRACT:Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    aput-object v6, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->NEUTRAL:Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->ROLL_LOCK:Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->PITCH_LOCK:Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->YAW_LOCK:Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    aput-object v1, v0, v5

    sput-object v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->$VALUES:[Lio/dronefleet/mavlink/common/GimbalManagerFlags;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/GimbalManagerFlags;
    .locals 1

    .line 10
    const-class v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/GimbalManagerFlags;
    .locals 1

    .line 10
    sget-object v0, Lio/dronefleet/mavlink/common/GimbalManagerFlags;->$VALUES:[Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/GimbalManagerFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/GimbalManagerFlags;

    return-object v0
.end method
