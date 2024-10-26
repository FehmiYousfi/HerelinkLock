.class public final enum Lio/dronefleet/mavlink/common/MavMode;
.super Ljava/lang/Enum;
.source "MavMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavMode;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavMode;

.field public static final enum AUTO_ARMED:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xdc
    .end annotation
.end field

.field public static final enum AUTO_DISARMED:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5c
    .end annotation
.end field

.field public static final enum GUIDED_ARMED:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd8
    .end annotation
.end field

.field public static final enum GUIDED_DISARMED:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x58
    .end annotation
.end field

.field public static final enum MANUAL_ARMED:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc0
    .end annotation
.end field

.field public static final enum MANUAL_DISARMED:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum PREFLIGHT:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum STABILIZE_ARMED:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd0
    .end annotation
.end field

.field public static final enum STABILIZE_DISARMED:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x50
    .end annotation
.end field

.field public static final enum TEST_ARMED:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc2
    .end annotation
.end field

.field public static final enum TEST_DISARMED:Lio/dronefleet/mavlink/common/MavMode;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x42
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 16
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/4 v1, 0x0

    const-string v2, "PREFLIGHT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->PREFLIGHT:Lio/dronefleet/mavlink/common/MavMode;

    .line 22
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/4 v2, 0x1

    const-string v3, "STABILIZE_DISARMED"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->STABILIZE_DISARMED:Lio/dronefleet/mavlink/common/MavMode;

    .line 28
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/4 v3, 0x2

    const-string v4, "STABILIZE_ARMED"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->STABILIZE_ARMED:Lio/dronefleet/mavlink/common/MavMode;

    .line 34
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/4 v4, 0x3

    const-string v5, "MANUAL_DISARMED"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->MANUAL_DISARMED:Lio/dronefleet/mavlink/common/MavMode;

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/4 v5, 0x4

    const-string v6, "MANUAL_ARMED"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->MANUAL_ARMED:Lio/dronefleet/mavlink/common/MavMode;

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/4 v6, 0x5

    const-string v7, "GUIDED_DISARMED"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->GUIDED_DISARMED:Lio/dronefleet/mavlink/common/MavMode;

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/4 v7, 0x6

    const-string v8, "GUIDED_ARMED"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->GUIDED_ARMED:Lio/dronefleet/mavlink/common/MavMode;

    .line 59
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/4 v8, 0x7

    const-string v9, "AUTO_DISARMED"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->AUTO_DISARMED:Lio/dronefleet/mavlink/common/MavMode;

    .line 66
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/16 v9, 0x8

    const-string v10, "AUTO_ARMED"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->AUTO_ARMED:Lio/dronefleet/mavlink/common/MavMode;

    .line 73
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/16 v10, 0x9

    const-string v11, "TEST_DISARMED"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->TEST_DISARMED:Lio/dronefleet/mavlink/common/MavMode;

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/common/MavMode;

    const/16 v11, 0xa

    const-string v12, "TEST_ARMED"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/MavMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->TEST_ARMED:Lio/dronefleet/mavlink/common/MavMode;

    const/16 v0, 0xb

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavMode;

    .line 11
    sget-object v12, Lio/dronefleet/mavlink/common/MavMode;->PREFLIGHT:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v12, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavMode;->STABILIZE_DISARMED:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavMode;->STABILIZE_ARMED:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavMode;->MANUAL_DISARMED:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavMode;->MANUAL_ARMED:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavMode;->GUIDED_DISARMED:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavMode;->GUIDED_ARMED:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavMode;->AUTO_DISARMED:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavMode;->AUTO_ARMED:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/MavMode;->TEST_DISARMED:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/MavMode;->TEST_ARMED:Lio/dronefleet/mavlink/common/MavMode;

    aput-object v1, v0, v11

    sput-object v0, Lio/dronefleet/mavlink/common/MavMode;->$VALUES:[Lio/dronefleet/mavlink/common/MavMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavMode;
    .locals 1

    .line 11
    const-class v0, Lio/dronefleet/mavlink/common/MavMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavMode;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavMode;
    .locals 1

    .line 11
    sget-object v0, Lio/dronefleet/mavlink/common/MavMode;->$VALUES:[Lio/dronefleet/mavlink/common/MavMode;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavMode;

    return-object v0
.end method
