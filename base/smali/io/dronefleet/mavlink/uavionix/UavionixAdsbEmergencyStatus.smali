.class public final enum Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
.super Ljava/lang/Enum;
.source "UavionixAdsbEmergencyStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

.field public static final enum UAVIONIX_ADSB_OUT_DOWNED_AIRCRAFT_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x6
    .end annotation
.end field

.field public static final enum UAVIONIX_ADSB_OUT_GENERAL_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x1
    .end annotation
.end field

.field public static final enum UAVIONIX_ADSB_OUT_LIFEGUARD_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x2
    .end annotation
.end field

.field public static final enum UAVIONIX_ADSB_OUT_MINIMUM_FUEL_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x3
    .end annotation
.end field

.field public static final enum UAVIONIX_ADSB_OUT_NO_COMM_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x4
    .end annotation
.end field

.field public static final enum UAVIONIX_ADSB_OUT_NO_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x0
    .end annotation
.end field

.field public static final enum UAVIONIX_ADSB_OUT_RESERVED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x7
    .end annotation
.end field

.field public static final enum UAVIONIX_ADSB_OUT_UNLAWFUL_INTERFERANCE_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    const/4 v1, 0x0

    const-string v2, "UAVIONIX_ADSB_OUT_NO_EMERGENCY"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_NO_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    .line 20
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    const/4 v2, 0x1

    const-string v3, "UAVIONIX_ADSB_OUT_GENERAL_EMERGENCY"

    invoke-direct {v0, v3, v2}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_GENERAL_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    .line 26
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    const/4 v3, 0x2

    const-string v4, "UAVIONIX_ADSB_OUT_LIFEGUARD_EMERGENCY"

    invoke-direct {v0, v4, v3}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_LIFEGUARD_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    .line 32
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    const/4 v4, 0x3

    const-string v5, "UAVIONIX_ADSB_OUT_MINIMUM_FUEL_EMERGENCY"

    invoke-direct {v0, v5, v4}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_MINIMUM_FUEL_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    .line 38
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    const/4 v5, 0x4

    const-string v6, "UAVIONIX_ADSB_OUT_NO_COMM_EMERGENCY"

    invoke-direct {v0, v6, v5}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_NO_COMM_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    .line 44
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    const/4 v6, 0x5

    const-string v7, "UAVIONIX_ADSB_OUT_UNLAWFUL_INTERFERANCE_EMERGENCY"

    invoke-direct {v0, v7, v6}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_UNLAWFUL_INTERFERANCE_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    const/4 v7, 0x6

    const-string v8, "UAVIONIX_ADSB_OUT_DOWNED_AIRCRAFT_EMERGENCY"

    invoke-direct {v0, v8, v7}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_DOWNED_AIRCRAFT_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    const/4 v8, 0x7

    const-string v9, "UAVIONIX_ADSB_OUT_RESERVED"

    invoke-direct {v0, v9, v8}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_RESERVED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    const/16 v0, 0x8

    new-array v0, v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    .line 9
    sget-object v9, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_NO_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    aput-object v9, v0, v1

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_GENERAL_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    aput-object v1, v0, v2

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_LIFEGUARD_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    aput-object v1, v0, v3

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_MINIMUM_FUEL_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    aput-object v1, v0, v4

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_NO_COMM_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    aput-object v1, v0, v5

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_UNLAWFUL_INTERFERANCE_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    aput-object v1, v0, v6

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_DOWNED_AIRCRAFT_EMERGENCY:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    aput-object v1, v0, v7

    sget-object v1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->UAVIONIX_ADSB_OUT_RESERVED:Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    aput-object v1, v0, v8

    sput-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

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

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->$VALUES:[Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;

    return-object v0
.end method