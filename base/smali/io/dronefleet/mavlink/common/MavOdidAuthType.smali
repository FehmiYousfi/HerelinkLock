.class public final enum Lio/dronefleet/mavlink/common/MavOdidAuthType;
.super Ljava/lang/Enum;
.source "MavOdidAuthType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavOdidAuthType;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavOdidAuthType;

.field public static final enum MESSAGE_SET_SIGNATURE:Lio/dronefleet/mavlink/common/MavOdidAuthType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum NETWORK_REMOTE_ID:Lio/dronefleet/mavlink/common/MavOdidAuthType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum NONE:Lio/dronefleet/mavlink/common/MavOdidAuthType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum OPERATOR_ID_SIGNATURE:Lio/dronefleet/mavlink/common/MavOdidAuthType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum SPECIFIC_AUTHENTICATION:Lio/dronefleet/mavlink/common/MavOdidAuthType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum UAS_ID_SIGNATURE:Lio/dronefleet/mavlink/common/MavOdidAuthType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavOdidAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;->NONE:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;

    const/4 v2, 0x1

    const-string v3, "UAS_ID_SIGNATURE"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavOdidAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;->UAS_ID_SIGNATURE:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;

    const/4 v3, 0x2

    const-string v4, "OPERATOR_ID_SIGNATURE"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavOdidAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;->OPERATOR_ID_SIGNATURE:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;

    const/4 v4, 0x3

    const-string v5, "MESSAGE_SET_SIGNATURE"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavOdidAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;->MESSAGE_SET_SIGNATURE:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;

    const/4 v5, 0x4

    const-string v6, "NETWORK_REMOTE_ID"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavOdidAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;->NETWORK_REMOTE_ID:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    .line 45
    new-instance v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;

    const/4 v6, 0x5

    const-string v7, "SPECIFIC_AUTHENTICATION"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavOdidAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;->SPECIFIC_AUTHENTICATION:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavOdidAuthType;

    .line 9
    sget-object v7, Lio/dronefleet/mavlink/common/MavOdidAuthType;->NONE:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    aput-object v7, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidAuthType;->UAS_ID_SIGNATURE:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidAuthType;->OPERATOR_ID_SIGNATURE:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidAuthType;->MESSAGE_SET_SIGNATURE:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidAuthType;->NETWORK_REMOTE_ID:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavOdidAuthType;->SPECIFIC_AUTHENTICATION:Lio/dronefleet/mavlink/common/MavOdidAuthType;

    aput-object v1, v0, v6

    sput-object v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;->$VALUES:[Lio/dronefleet/mavlink/common/MavOdidAuthType;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavOdidAuthType;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavOdidAuthType;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavOdidAuthType;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavOdidAuthType;->$VALUES:[Lio/dronefleet/mavlink/common/MavOdidAuthType;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavOdidAuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavOdidAuthType;

    return-object v0
.end method
