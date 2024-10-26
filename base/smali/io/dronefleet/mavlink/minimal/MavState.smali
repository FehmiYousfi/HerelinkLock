.class public final enum Lio/dronefleet/mavlink/minimal/MavState;
.super Ljava/lang/Enum;
.source "MavState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/minimal/MavState;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/minimal/MavState;

.field public static final enum ACTIVE:Lio/dronefleet/mavlink/minimal/MavState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum BOOT:Lio/dronefleet/mavlink/minimal/MavState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum CALIBRATING:Lio/dronefleet/mavlink/minimal/MavState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum CRITICAL:Lio/dronefleet/mavlink/minimal/MavState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum EMERGENCY:Lio/dronefleet/mavlink/minimal/MavState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum FLIGHT_TERMINATION:Lio/dronefleet/mavlink/minimal/MavState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum POWEROFF:Lio/dronefleet/mavlink/minimal/MavState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum STANDBY:Lio/dronefleet/mavlink/minimal/MavState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum UNINIT:Lio/dronefleet/mavlink/minimal/MavState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavState;

    const/4 v1, 0x0

    const-string v2, "UNINIT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/minimal/MavState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavState;->UNINIT:Lio/dronefleet/mavlink/minimal/MavState;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavState;

    const/4 v2, 0x1

    const-string v3, "BOOT"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/minimal/MavState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavState;->BOOT:Lio/dronefleet/mavlink/minimal/MavState;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavState;

    const/4 v3, 0x2

    const-string v4, "CALIBRATING"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/minimal/MavState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavState;->CALIBRATING:Lio/dronefleet/mavlink/minimal/MavState;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavState;

    const/4 v4, 0x3

    const-string v5, "STANDBY"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/minimal/MavState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavState;->STANDBY:Lio/dronefleet/mavlink/minimal/MavState;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavState;

    const/4 v5, 0x4

    const-string v6, "ACTIVE"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/minimal/MavState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavState;->ACTIVE:Lio/dronefleet/mavlink/minimal/MavState;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavState;

    const/4 v6, 0x5

    const-string v7, "CRITICAL"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/minimal/MavState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavState;->CRITICAL:Lio/dronefleet/mavlink/minimal/MavState;

    .line 51
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavState;

    const/4 v7, 0x6

    const-string v8, "EMERGENCY"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/minimal/MavState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavState;->EMERGENCY:Lio/dronefleet/mavlink/minimal/MavState;

    .line 57
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavState;

    const/4 v8, 0x7

    const-string v9, "POWEROFF"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/minimal/MavState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavState;->POWEROFF:Lio/dronefleet/mavlink/minimal/MavState;

    .line 63
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavState;

    const/16 v9, 0x8

    const-string v10, "FLIGHT_TERMINATION"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/minimal/MavState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavState;->FLIGHT_TERMINATION:Lio/dronefleet/mavlink/minimal/MavState;

    const/16 v0, 0x9

    new-array v0, v0, [Lio/dronefleet/mavlink/minimal/MavState;

    .line 9
    sget-object v10, Lio/dronefleet/mavlink/minimal/MavState;->UNINIT:Lio/dronefleet/mavlink/minimal/MavState;

    aput-object v10, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavState;->BOOT:Lio/dronefleet/mavlink/minimal/MavState;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavState;->CALIBRATING:Lio/dronefleet/mavlink/minimal/MavState;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavState;->STANDBY:Lio/dronefleet/mavlink/minimal/MavState;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavState;->ACTIVE:Lio/dronefleet/mavlink/minimal/MavState;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavState;->CRITICAL:Lio/dronefleet/mavlink/minimal/MavState;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavState;->EMERGENCY:Lio/dronefleet/mavlink/minimal/MavState;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavState;->POWEROFF:Lio/dronefleet/mavlink/minimal/MavState;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavState;->FLIGHT_TERMINATION:Lio/dronefleet/mavlink/minimal/MavState;

    aput-object v1, v0, v9

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavState;->$VALUES:[Lio/dronefleet/mavlink/minimal/MavState;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/minimal/MavState;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/minimal/MavState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/minimal/MavState;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/minimal/MavState;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/minimal/MavState;->$VALUES:[Lio/dronefleet/mavlink/minimal/MavState;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/minimal/MavState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/minimal/MavState;

    return-object v0
.end method
