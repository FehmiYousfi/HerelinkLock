.class public final enum Lio/dronefleet/mavlink/common/MavSeverity;
.super Ljava/lang/Enum;
.source "MavSeverity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/common/MavSeverity;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/common/MavSeverity;

.field public static final enum ALERT:Lio/dronefleet/mavlink/common/MavSeverity;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum CRITICAL:Lio/dronefleet/mavlink/common/MavSeverity;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum DEBUG:Lio/dronefleet/mavlink/common/MavSeverity;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum EMERGENCY:Lio/dronefleet/mavlink/common/MavSeverity;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum ERROR:Lio/dronefleet/mavlink/common/MavSeverity;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum INFO:Lio/dronefleet/mavlink/common/MavSeverity;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum NOTICE:Lio/dronefleet/mavlink/common/MavSeverity;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field

.field public static final enum WARNING:Lio/dronefleet/mavlink/common/MavSeverity;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    new-instance v0, Lio/dronefleet/mavlink/common/MavSeverity;

    const/4 v1, 0x0

    const-string v2, "EMERGENCY"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/common/MavSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavSeverity;->EMERGENCY:Lio/dronefleet/mavlink/common/MavSeverity;

    .line 22
    new-instance v0, Lio/dronefleet/mavlink/common/MavSeverity;

    const/4 v2, 0x1

    const-string v3, "ALERT"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/common/MavSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavSeverity;->ALERT:Lio/dronefleet/mavlink/common/MavSeverity;

    .line 28
    new-instance v0, Lio/dronefleet/mavlink/common/MavSeverity;

    const/4 v3, 0x2

    const-string v4, "CRITICAL"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/common/MavSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavSeverity;->CRITICAL:Lio/dronefleet/mavlink/common/MavSeverity;

    .line 34
    new-instance v0, Lio/dronefleet/mavlink/common/MavSeverity;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/common/MavSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavSeverity;->ERROR:Lio/dronefleet/mavlink/common/MavSeverity;

    .line 41
    new-instance v0, Lio/dronefleet/mavlink/common/MavSeverity;

    const/4 v5, 0x4

    const-string v6, "WARNING"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/common/MavSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavSeverity;->WARNING:Lio/dronefleet/mavlink/common/MavSeverity;

    .line 48
    new-instance v0, Lio/dronefleet/mavlink/common/MavSeverity;

    const/4 v6, 0x5

    const-string v7, "NOTICE"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/common/MavSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavSeverity;->NOTICE:Lio/dronefleet/mavlink/common/MavSeverity;

    .line 54
    new-instance v0, Lio/dronefleet/mavlink/common/MavSeverity;

    const/4 v7, 0x6

    const-string v8, "INFO"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/common/MavSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavSeverity;->INFO:Lio/dronefleet/mavlink/common/MavSeverity;

    .line 61
    new-instance v0, Lio/dronefleet/mavlink/common/MavSeverity;

    const/4 v8, 0x7

    const-string v9, "DEBUG"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/common/MavSeverity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/common/MavSeverity;->DEBUG:Lio/dronefleet/mavlink/common/MavSeverity;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/common/MavSeverity;

    .line 11
    sget-object v9, Lio/dronefleet/mavlink/common/MavSeverity;->EMERGENCY:Lio/dronefleet/mavlink/common/MavSeverity;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/common/MavSeverity;->ALERT:Lio/dronefleet/mavlink/common/MavSeverity;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/common/MavSeverity;->CRITICAL:Lio/dronefleet/mavlink/common/MavSeverity;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/common/MavSeverity;->ERROR:Lio/dronefleet/mavlink/common/MavSeverity;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/common/MavSeverity;->WARNING:Lio/dronefleet/mavlink/common/MavSeverity;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/common/MavSeverity;->NOTICE:Lio/dronefleet/mavlink/common/MavSeverity;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/common/MavSeverity;->INFO:Lio/dronefleet/mavlink/common/MavSeverity;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/common/MavSeverity;->DEBUG:Lio/dronefleet/mavlink/common/MavSeverity;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/common/MavSeverity;->$VALUES:[Lio/dronefleet/mavlink/common/MavSeverity;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/common/MavSeverity;
    .locals 1

    .line 11
    const-class v0, Lio/dronefleet/mavlink/common/MavSeverity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/common/MavSeverity;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/common/MavSeverity;
    .locals 1

    .line 11
    sget-object v0, Lio/dronefleet/mavlink/common/MavSeverity;->$VALUES:[Lio/dronefleet/mavlink/common/MavSeverity;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/common/MavSeverity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/common/MavSeverity;

    return-object v0
.end method
