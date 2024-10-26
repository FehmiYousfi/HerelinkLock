.class public final enum Lio/dronefleet/mavlink/common/AisNavStatus;
.super Ljava/lang/Enum;
.source "AisNavStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/AisNavStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/AisNavStatus;

.field public static final enum AIS_NAV_AGROUND:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum AIS_NAV_AIS_SART:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xe
    .end annotation
.end field

.field public static final enum AIS_NAV_ANCHORED:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum AIS_NAV_DRAUGHT_CONSTRAINED:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum AIS_NAV_FISHING:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum AIS_NAV_MOORED:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum AIS_NAV_RESERVED_1:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum AIS_NAV_RESERVED_2:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc
    .end annotation
.end field

.field public static final enum AIS_NAV_RESERVED_3:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xd
    .end annotation
.end field

.field public static final enum AIS_NAV_RESERVED_HSC:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation
.end field

.field public static final enum AIS_NAV_RESERVED_WIG:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum AIS_NAV_RESTRICTED_MANOEUVERABILITY:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum AIS_NAV_SAILING:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum AIS_NAV_UNKNOWN:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xf
    .end annotation
.end field

.field public static final enum AIS_NAV_UN_COMMANDED:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum UNDER_WAY:Lio/dronefleet/mavlink/common/AisNavStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/4 v1, 0x0

    const-string v2, "UNDER_WAY"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->UNDER_WAY:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 21
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/4 v2, 0x1

    const-string v3, "AIS_NAV_ANCHORED"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_ANCHORED:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 27
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/4 v3, 0x2

    const-string v4, "AIS_NAV_UN_COMMANDED"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_UN_COMMANDED:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 33
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/4 v4, 0x3

    const-string v5, "AIS_NAV_RESTRICTED_MANOEUVERABILITY"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESTRICTED_MANOEUVERABILITY:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 39
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/4 v5, 0x4

    const-string v6, "AIS_NAV_DRAUGHT_CONSTRAINED"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_DRAUGHT_CONSTRAINED:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 45
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/4 v6, 0x5

    const-string v7, "AIS_NAV_MOORED"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_MOORED:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 51
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/4 v7, 0x6

    const-string v8, "AIS_NAV_AGROUND"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_AGROUND:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 57
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/4 v8, 0x7

    const-string v9, "AIS_NAV_FISHING"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_FISHING:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 63
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v9, 0x8

    const-string v10, "AIS_NAV_SAILING"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_SAILING:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 69
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v10, 0x9

    const-string v11, "AIS_NAV_RESERVED_HSC"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESERVED_HSC:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 75
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v11, 0xa

    const-string v12, "AIS_NAV_RESERVED_WIG"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESERVED_WIG:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 81
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v12, 0xb

    const-string v13, "AIS_NAV_RESERVED_1"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESERVED_1:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 87
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v13, 0xc

    const-string v14, "AIS_NAV_RESERVED_2"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESERVED_2:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 93
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v14, 0xd

    const-string v15, "AIS_NAV_RESERVED_3"

    invoke-direct {v0, v15, v14}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESERVED_3:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 99
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v15, 0xe

    const-string v14, "AIS_NAV_AIS_SART"

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_AIS_SART:Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 105
    new-instance v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    const-string v14, "AIS_NAV_UNKNOWN"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lio/dronefleet/mavlink/common/AisNavStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_UNKNOWN:Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v0, 0x10

    new-array v0, v0, [Lio/dronefleet/mavlink/common/AisNavStatus;

    .line 10
    sget-object v14, Lio/dronefleet/mavlink/common/AisNavStatus;->UNDER_WAY:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_ANCHORED:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_UN_COMMANDED:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESTRICTED_MANOEUVERABILITY:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_DRAUGHT_CONSTRAINED:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_MOORED:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_AGROUND:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_FISHING:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_SAILING:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESERVED_HSC:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESERVED_WIG:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESERVED_1:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESERVED_2:Lio/dronefleet/mavlink/common/AisNavStatus;

    aput-object v1, v0, v13

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_RESERVED_3:Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_AIS_SART:Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/AisNavStatus;->AIS_NAV_UNKNOWN:Lio/dronefleet/mavlink/common/AisNavStatus;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->$VALUES:[Lio/dronefleet/mavlink/common/AisNavStatus;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/AisNavStatus;
    .locals 1

    .line 10
    const-class v0, Lio/dronefleet/mavlink/common/AisNavStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/AisNavStatus;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/AisNavStatus;
    .locals 1

    .line 10
    sget-object v0, Lio/dronefleet/mavlink/common/AisNavStatus;->$VALUES:[Lio/dronefleet/mavlink/common/AisNavStatus;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/AisNavStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/AisNavStatus;

    return-object v0
.end method
