.class public final enum Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
.super Ljava/lang/Enum;
.source "AutoquadNavStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

.field public static final enum AQ_NAV_STATUS_ALTHOLD:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_CALIBRATING:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x200
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_CEILING:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8000000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_CEILING_REACHED:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4000000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_DAO:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2000000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_DVH:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1000000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_FAILSAFE:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = -0x80000000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_FUEL_CRITICAL:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_FUEL_LOW:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_GUIDED:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_HF_DYNAMIC:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10000000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_HF_LOCKED:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20000000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_INIT:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_MANUAL:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_MISSION:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_NO_RC:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_POSHOLD:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_READY:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x100
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_RTH:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40000000
    .end annotation
.end field

.field public static final enum AQ_NAV_STATUS_STANDBY:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/4 v1, 0x0

    const-string v2, "AQ_NAV_STATUS_INIT"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_INIT:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 22
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/4 v2, 0x1

    const-string v3, "AQ_NAV_STATUS_STANDBY"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_STANDBY:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 28
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/4 v3, 0x2

    const-string v4, "AQ_NAV_STATUS_MANUAL"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_MANUAL:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 34
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/4 v4, 0x3

    const-string v5, "AQ_NAV_STATUS_ALTHOLD"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_ALTHOLD:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/4 v5, 0x4

    const-string v6, "AQ_NAV_STATUS_POSHOLD"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_POSHOLD:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/4 v6, 0x5

    const-string v7, "AQ_NAV_STATUS_GUIDED"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_GUIDED:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/4 v7, 0x6

    const-string v8, "AQ_NAV_STATUS_MISSION"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_MISSION:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/4 v8, 0x7

    const-string v9, "AQ_NAV_STATUS_READY"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_READY:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 64
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v9, 0x8

    const-string v10, "AQ_NAV_STATUS_CALIBRATING"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_CALIBRATING:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 70
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v10, 0x9

    const-string v11, "AQ_NAV_STATUS_NO_RC"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_NO_RC:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 76
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v11, 0xa

    const-string v12, "AQ_NAV_STATUS_FUEL_LOW"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_FUEL_LOW:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 82
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v12, 0xb

    const-string v13, "AQ_NAV_STATUS_FUEL_CRITICAL"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_FUEL_CRITICAL:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 88
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v13, 0xc

    const-string v14, "AQ_NAV_STATUS_DVH"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_DVH:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 94
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v14, 0xd

    const-string v15, "AQ_NAV_STATUS_DAO"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_DAO:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 100
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v15, 0xe

    const-string v14, "AQ_NAV_STATUS_CEILING_REACHED"

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_CEILING_REACHED:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 106
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const-string v14, "AQ_NAV_STATUS_CEILING"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_CEILING:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 112
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const-string v14, "AQ_NAV_STATUS_HF_DYNAMIC"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_HF_DYNAMIC:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 118
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const-string v14, "AQ_NAV_STATUS_HF_LOCKED"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_HF_LOCKED:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 124
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const-string v14, "AQ_NAV_STATUS_RTH"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_RTH:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 130
    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const-string v14, "AQ_NAV_STATUS_FAILSAFE"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_FAILSAFE:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v0, 0x14

    new-array v0, v0, [Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    .line 11
    sget-object v14, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_INIT:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_STANDBY:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_MANUAL:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_ALTHOLD:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_POSHOLD:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_GUIDED:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_MISSION:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_READY:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_CALIBRATING:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_NO_RC:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_FUEL_LOW:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_FUEL_CRITICAL:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_DVH:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_DAO:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_CEILING_REACHED:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_CEILING:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_HF_DYNAMIC:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_HF_LOCKED:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_RTH:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->AQ_NAV_STATUS_FAILSAFE:Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->$VALUES:[Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .locals 1

    .line 11
    const-class v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;
    .locals 1

    .line 11
    sget-object v0, Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->$VALUES:[Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/autoquad/AutoquadNavStatus;

    return-object v0
.end method
