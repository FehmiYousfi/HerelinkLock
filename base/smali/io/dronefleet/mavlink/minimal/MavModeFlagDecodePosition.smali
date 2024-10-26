.class public final enum Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
.super Ljava/lang/Enum;
.source "MavModeFlagDecodePosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

.field public static final enum AUTO:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum CUSTOM_MODE:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum GUIDED:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x8
    .end annotation
.end field

.field public static final enum HIL:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x20
    .end annotation
.end field

.field public static final enum MANUAL:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x40
    .end annotation
.end field

.field public static final enum SAFETY:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x80
    .end annotation
.end field

.field public static final enum STABILIZE:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x10
    .end annotation
.end field

.field public static final enum TEST:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    const/4 v1, 0x0

    const-string v2, "SAFETY"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->SAFETY:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    .line 22
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    const/4 v2, 0x1

    const-string v3, "MANUAL"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->MANUAL:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    .line 28
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    const/4 v3, 0x2

    const-string v4, "HIL"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->HIL:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    .line 34
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    const/4 v4, 0x3

    const-string v5, "STABILIZE"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->STABILIZE:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    const/4 v5, 0x4

    const-string v6, "GUIDED"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->GUIDED:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    .line 46
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    const/4 v6, 0x5

    const-string v7, "AUTO"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->AUTO:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    const/4 v7, 0x6

    const-string v8, "TEST"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->TEST:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    .line 58
    new-instance v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    const/4 v8, 0x7

    const-string v9, "CUSTOM_MODE"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->CUSTOM_MODE:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    .line 11
    sget-object v9, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->SAFETY:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->MANUAL:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->HIL:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->STABILIZE:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->GUIDED:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->AUTO:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->TEST:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->CUSTOM_MODE:Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->$VALUES:[Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
    .locals 1

    .line 11
    const-class v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;
    .locals 1

    .line 11
    sget-object v0, Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->$VALUES:[Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/minimal/MavModeFlagDecodePosition;

    return-object v0
.end method
