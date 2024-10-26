.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
.super Ljava/lang/Object;
.source "UavionixAdsbOutStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private boardtemp:I

.field private fault:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;",
            ">;"
        }
    .end annotation
.end field

.field private flightId:Ljava/lang/String;

.field private nicNacp:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusNicNacp;",
            ">;"
        }
    .end annotation
.end field

.field private squawk:I

.field private state:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final boardtemp(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Board temperature in C"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 313
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->boardtemp:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus;
    .locals 9

    .line 370
    new-instance v8, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->state:Lio/dronefleet/mavlink/util/EnumValue;

    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->squawk:I

    iget-object v3, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->nicNacp:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->boardtemp:I

    iget-object v5, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->fault:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v6, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->flightId:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$1;)V

    return-object v8
.end method

.method public final fault(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0

    .line 335
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->fault(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final fault(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADS-B transponder fault flags"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusFault;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 327
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->fault:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final fault(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;"
        }
    .end annotation

    .line 349
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->fault(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs fault([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0

    .line 342
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->fault(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flightId(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Flight Identification: 8 ASCII characters, \'0\'\n                through \'9\', \'A\' through \'Z\' or space. Spaces (0x20) used as a trailing pad\n                character, or when call sign is unavailable."
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 365
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->flightId:Ljava/lang/String;

    return-object p0
.end method

.method public final nicNacp(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusNicNacp;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0

    .line 283
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->nicNacp(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final nicNacp(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusNicNacp;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Integrity\n                and Accuracy of traffic reported as a 4-bit value for each field (NACp 7:4, NIC 3:0)\n                and encoded by Containment Radius (HPL) and Estimated Position Uncertainty (HFOM),\n                respectively"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusNicNacp;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 273
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->nicNacp:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final nicNacp(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;"
        }
    .end annotation

    .line 301
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->nicNacp(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs nicNacp([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0

    .line 292
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->nicNacp(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final squawk(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mode A code (typically 1200 [0x04B0] for VFR)"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 254
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->squawk:I

    return-object p0
.end method

.method public final state(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0

    .line 228
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADS-B transponder status state flags"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatusState;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 220
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->state:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final state(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;"
        }
    .end annotation

    .line 242
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs state([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;
    .locals 0

    .line 235
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;->state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutStatus$Builder;

    move-result-object p1

    return-object p1
.end method
