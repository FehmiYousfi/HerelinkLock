.class public final enum Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
.super Ljava/lang/Enum;
.source "UavionixAdsbOutStatusState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

.field public static final enum IDENT_ACTIVE:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum INTERROGATED_SINCE_LAST:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum MODE_A_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum MODE_C_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum MODE_S_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum ON_GROUND:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum XBIT_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum _1090ES_TX_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    const/4 v1, 0x0

    const-string v2, "ON_GROUND"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->ON_GROUND:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    const/4 v2, 0x1

    const-string v3, "INTERROGATED_SINCE_LAST"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->INTERROGATED_SINCE_LAST:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    const/4 v3, 0x2

    const-string v4, "XBIT_ENABLED"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->XBIT_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    const/4 v4, 0x3

    const-string v5, "IDENT_ACTIVE"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->IDENT_ACTIVE:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    const/4 v5, 0x4

    const-string v6, "MODE_A_ENABLED"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->MODE_A_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    const/4 v6, 0x5

    const-string v7, "MODE_C_ENABLED"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->MODE_C_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    const/4 v7, 0x6

    const-string v8, "MODE_S_ENABLED"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->MODE_S_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    const/4 v8, 0x7

    const-string v9, "_1090ES_TX_ENABLED"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->_1090ES_TX_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    .line 9
    sget-object v9, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->ON_GROUND:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->INTERROGATED_SINCE_LAST:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->XBIT_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->IDENT_ACTIVE:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->MODE_A_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->MODE_C_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->MODE_S_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->_1090ES_TX_ENABLED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;

    return-object v0
.end method
