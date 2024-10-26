.class public final enum Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
.super Ljava/lang/Enum;
.source "MavTunnelPayloadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavTunnelPayloadType;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

.field public static final enum STORM32_RESERVED0:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc8
    .end annotation
.end field

.field public static final enum STORM32_RESERVED1:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc9
    .end annotation
.end field

.field public static final enum STORM32_RESERVED2:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xca
    .end annotation
.end field

.field public static final enum STORM32_RESERVED3:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xcb
    .end annotation
.end field

.field public static final enum STORM32_RESERVED4:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xcc
    .end annotation
.end field

.field public static final enum STORM32_RESERVED5:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xcd
    .end annotation
.end field

.field public static final enum STORM32_RESERVED6:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xce
    .end annotation
.end field

.field public static final enum STORM32_RESERVED7:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xcf
    .end annotation
.end field

.field public static final enum STORM32_RESERVED8:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd0
    .end annotation
.end field

.field public static final enum STORM32_RESERVED9:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd1
    .end annotation
.end field

.field public static final enum UNKNOWN:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->UNKNOWN:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/4 v2, 0x1

    const-string v3, "STORM32_RESERVED0"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED0:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/4 v3, 0x2

    const-string v4, "STORM32_RESERVED1"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED1:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/4 v4, 0x3

    const-string v5, "STORM32_RESERVED2"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED2:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/4 v5, 0x4

    const-string v6, "STORM32_RESERVED3"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED3:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/4 v6, 0x5

    const-string v7, "STORM32_RESERVED4"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED4:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/4 v7, 0x6

    const-string v8, "STORM32_RESERVED5"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED5:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/4 v8, 0x7

    const-string v9, "STORM32_RESERVED6"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED6:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/16 v9, 0x8

    const-string v10, "STORM32_RESERVED7"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED7:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/16 v10, 0x9

    const-string v11, "STORM32_RESERVED8"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED8:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/16 v11, 0xa

    const-string v12, "STORM32_RESERVED9"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED9:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    const/16 v0, 0xb

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    .line 9
    sget-object v12, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->UNKNOWN:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v12, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED0:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED1:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED2:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED3:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED4:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED5:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED6:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED7:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED8:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->STORM32_RESERVED9:Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    aput-object v1, v0, v11

    sput-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->$VALUES:[Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavTunnelPayloadType;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->$VALUES:[Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavTunnelPayloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavTunnelPayloadType;

    return-object v0
.end method
