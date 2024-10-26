.class public final enum Lio/dronefleet/mavlink/common/MavParamType;
.super Ljava/lang/Enum;
.source "MavParamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavParamType;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavParamType;

.field public static final enum INT16:Lio/dronefleet/mavlink/common/MavParamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum INT32:Lio/dronefleet/mavlink/common/MavParamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum INT64:Lio/dronefleet/mavlink/common/MavParamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum INT8:Lio/dronefleet/mavlink/common/MavParamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum REAL32:Lio/dronefleet/mavlink/common/MavParamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation
.end field

.field public static final enum REAL64:Lio/dronefleet/mavlink/common/MavParamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum UINT16:Lio/dronefleet/mavlink/common/MavParamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum UINT32:Lio/dronefleet/mavlink/common/MavParamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum UINT64:Lio/dronefleet/mavlink/common/MavParamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum UINT8:Lio/dronefleet/mavlink/common/MavParamType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/4 v1, 0x0

    const-string v2, "UINT8"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->UINT8:Lio/dronefleet/mavlink/common/MavParamType;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/4 v2, 0x1

    const-string v3, "INT8"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->INT8:Lio/dronefleet/mavlink/common/MavParamType;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/4 v3, 0x2

    const-string v4, "UINT16"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->UINT16:Lio/dronefleet/mavlink/common/MavParamType;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/4 v4, 0x3

    const-string v5, "INT16"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->INT16:Lio/dronefleet/mavlink/common/MavParamType;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/4 v5, 0x4

    const-string v6, "UINT32"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->UINT32:Lio/dronefleet/mavlink/common/MavParamType;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/4 v6, 0x5

    const-string v7, "INT32"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->INT32:Lio/dronefleet/mavlink/common/MavParamType;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/4 v7, 0x6

    const-string v8, "UINT64"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->UINT64:Lio/dronefleet/mavlink/common/MavParamType;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/4 v8, 0x7

    const-string v9, "INT64"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->INT64:Lio/dronefleet/mavlink/common/MavParamType;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/16 v9, 0x8

    const-string v10, "REAL32"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->REAL32:Lio/dronefleet/mavlink/common/MavParamType;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/16 v10, 0x9

    const-string v11, "REAL64"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/MavParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->REAL64:Lio/dronefleet/mavlink/common/MavParamType;

    const/16 v0, 0xa

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavParamType;

    .line 9
    sget-object v11, Lio/dronefleet/mavlink/common/MavParamType;->UINT8:Lio/dronefleet/mavlink/common/MavParamType;

    aput-object v11, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamType;->INT8:Lio/dronefleet/mavlink/common/MavParamType;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamType;->UINT16:Lio/dronefleet/mavlink/common/MavParamType;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamType;->INT16:Lio/dronefleet/mavlink/common/MavParamType;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamType;->UINT32:Lio/dronefleet/mavlink/common/MavParamType;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamType;->INT32:Lio/dronefleet/mavlink/common/MavParamType;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamType;->UINT64:Lio/dronefleet/mavlink/common/MavParamType;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamType;->INT64:Lio/dronefleet/mavlink/common/MavParamType;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamType;->REAL32:Lio/dronefleet/mavlink/common/MavParamType;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamType;->REAL64:Lio/dronefleet/mavlink/common/MavParamType;

    aput-object v1, v0, v10

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamType;->$VALUES:[Lio/dronefleet/mavlink/common/MavParamType;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavParamType;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavParamType;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavParamType;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavParamType;->$VALUES:[Lio/dronefleet/mavlink/common/MavParamType;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavParamType;

    return-object v0
.end method
