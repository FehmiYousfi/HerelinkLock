.class public final enum Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
.super Ljava/lang/Enum;
.source "LimitsState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/ardupilotmega/LimitsState;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

.field public static final enum LIMITS_DISABLED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum LIMITS_ENABLED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum LIMITS_INIT:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum LIMITS_RECOVERED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum LIMITS_RECOVERING:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum LIMITS_TRIGGERED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    const/4 v1, 0x0

    const-string v2, "LIMITS_INIT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_INIT:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    const/4 v2, 0x1

    const-string v3, "LIMITS_DISABLED"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_DISABLED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    const/4 v3, 0x2

    const-string v4, "LIMITS_ENABLED"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_ENABLED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    const/4 v4, 0x3

    const-string v5, "LIMITS_TRIGGERED"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_TRIGGERED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    const/4 v5, 0x4

    const-string v6, "LIMITS_RECOVERING"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_RECOVERING:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    const/4 v6, 0x5

    const-string v7, "LIMITS_RECOVERED"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_RECOVERED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    .line 9
    sget-object v7, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_INIT:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    aput-object v7, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_DISABLED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_ENABLED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_TRIGGERED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_RECOVERING:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->LIMITS_RECOVERED:Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    aput-object v1, v0, v6

    sput-object v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->$VALUES:[Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/ardupilotmega/LimitsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/ardupilotmega/LimitsState;

    return-object v0
.end method
