.class public final enum Lio/dronefleet/mavlink/common/MavParamExtType;
.super Ljava/lang/Enum;
.source "MavParamExtType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavParamExtType;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavParamExtType;

.field public static final enum CUSTOM:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xb
    .end annotation
.end field

.field public static final enum INT16:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum INT32:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum INT64:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum INT8:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum REAL32:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x9
    .end annotation
.end field

.field public static final enum REAL64:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0xa
    .end annotation
.end field

.field public static final enum UINT16:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum UINT32:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum UINT64:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum UINT8:Lio/dronefleet/mavlink/common/MavParamExtType;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/4 v1, 0x0

    const-string v2, "UINT8"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->UINT8:Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/4 v2, 0x1

    const-string v3, "INT8"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->INT8:Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/4 v3, 0x2

    const-string v4, "UINT16"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->UINT16:Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/4 v4, 0x3

    const-string v5, "INT16"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->INT16:Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/4 v5, 0x4

    const-string v6, "UINT32"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->UINT32:Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/4 v6, 0x5

    const-string v7, "INT32"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->INT32:Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/4 v7, 0x6

    const-string v8, "UINT64"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->UINT64:Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/4 v8, 0x7

    const-string v9, "INT64"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->INT64:Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 62
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/16 v9, 0x8

    const-string v10, "REAL32"

    invoke-direct {v0, v10, v9}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->REAL32:Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 68
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/16 v10, 0x9

    const-string v11, "REAL64"

    invoke-direct {v0, v11, v10}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->REAL64:Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    const/16 v11, 0xa

    const-string v12, "CUSTOM"

    invoke-direct {v0, v12, v11}, Lio/dronefleet/mavlink/common/MavParamExtType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->CUSTOM:Lio/dronefleet/mavlink/common/MavParamExtType;

    const/16 v0, 0xb

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavParamExtType;

    .line 9
    sget-object v12, Lio/dronefleet/mavlink/common/MavParamExtType;->UINT8:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v12, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamExtType;->INT8:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamExtType;->UINT16:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamExtType;->INT16:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamExtType;->UINT32:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamExtType;->INT32:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamExtType;->UINT64:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamExtType;->INT64:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v1, v0, v8

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamExtType;->REAL32:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v1, v0, v9

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamExtType;->REAL64:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v1, v0, v10

    sget-object v1, Lio/dronefleet/mavlink/common/MavParamExtType;->CUSTOM:Lio/dronefleet/mavlink/common/MavParamExtType;

    aput-object v1, v0, v11

    sput-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->$VALUES:[Lio/dronefleet/mavlink/common/MavParamExtType;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavParamExtType;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/common/MavParamExtType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavParamExtType;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavParamExtType;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/common/MavParamExtType;->$VALUES:[Lio/dronefleet/mavlink/common/MavParamExtType;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavParamExtType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavParamExtType;

    return-object v0
.end method
