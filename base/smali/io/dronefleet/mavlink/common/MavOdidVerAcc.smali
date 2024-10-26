.class public final enum Lio/dronefleet/mavlink/common/MavOdidVerAcc;
.super Ljava/lang/Enum;
.source "MavOdidVerAcc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavOdidVerAcc;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavOdidVerAcc;

.field public static final enum UNKNOWN:Lio/dronefleet/mavlink/common/MavOdidVerAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum _10_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum _150_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum _1_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum _25_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum _3_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum _45_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavOdidVerAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->UNKNOWN:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    const/4 v2, 0x1

    const-string v3, "_150_METER"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavOdidVerAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_150_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    const/4 v3, 0x2

    const-string v4, "_45_METER"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavOdidVerAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_45_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    const/4 v4, 0x3

    const-string v5, "_25_METER"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavOdidVerAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_25_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    const/4 v5, 0x4

    const-string v6, "_10_METER"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavOdidVerAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_10_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    const/4 v6, 0x5

    const-string v7, "_3_METER"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavOdidVerAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_3_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    const/4 v7, 0x6

    const-string v8, "_1_METER"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavOdidVerAcc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_1_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    const/4 v0, 0x7

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    .line 9
    sget-object v8, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->UNKNOWN:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    aput-object v8, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_150_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_45_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_25_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_10_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_3_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->_1_METER:Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    aput-object v1, v0, v7

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->$VALUES:[Lio/dronefleet/mavlink/common/MavOdidVerAcc;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavOdidVerAcc;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavOdidVerAcc;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavOdidVerAcc;->$VALUES:[Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavOdidVerAcc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavOdidVerAcc;

    return-object v0
.end method
