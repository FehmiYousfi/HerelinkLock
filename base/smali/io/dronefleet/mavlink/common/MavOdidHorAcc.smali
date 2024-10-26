.class public final enum Lio/dronefleet/mavlink/common/MavOdidHorAcc;
.super Ljava/lang/Enum;
.source "MavOdidHorAcc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavOdidHorAcc;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavOdidHorAcc;

.field public static final enum UNKNOWN:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum _0_05NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum _0_1NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum _0_3NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum _0_5NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum _10NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum _10_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum _1NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum _1_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xc
    .end annotation
.end field

.field public static final enum _2NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum _30_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation
.end field

.field public static final enum _3_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum _4NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->UNKNOWN:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/4 v2, 0x1

    const-string v3, "_10NM"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_10NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/4 v3, 0x2

    const-string v4, "_4NM"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_4NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/4 v4, 0x3

    const-string v5, "_2NM"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_2NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/4 v5, 0x4

    const-string v6, "_1NM"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_1NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/4 v6, 0x5

    const-string v7, "_0_5NM"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_0_5NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/4 v7, 0x6

    const-string v8, "_0_3NM"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_0_3NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/4 v8, 0x7

    const-string v9, "_0_1NM"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_0_1NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/16 v9, 0x8

    const-string v10, "_0_05NM"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_0_05NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/16 v10, 0x9

    const-string v11, "_30_METER"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_30_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/16 v11, 0xa

    const-string v12, "_10_METER"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_10_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 80
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/16 v12, 0xb

    const-string v13, "_3_METER"

    invoke-direct {v0, v13, v12}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_3_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 86
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/16 v13, 0xc

    const-string v14, "_1_METER"

    invoke-direct {v0, v14, v13}, Lio/dronefleet/mavlink/common/MavOdidHorAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_1_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    const/16 v0, 0xd

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    .line 9
    sget-object v14, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->UNKNOWN:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v14, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_10NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_4NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_2NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_1NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_0_5NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_0_3NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_0_1NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_0_05NM:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_30_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_10_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v11

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_3_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v12

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->_1_METER:Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    aput-object v1, v0, v13

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->$VALUES:[Lio/dronefleet/mavlink/common/MavOdidHorAcc;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavOdidHorAcc;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavOdidHorAcc;->$VALUES:[Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavOdidHorAcc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavOdidHorAcc;

    return-object v0
.end method
