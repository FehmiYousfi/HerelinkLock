.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
.super Ljava/lang/Object;
.source "UavionixAdsbOutControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private baroaltmsl:I

.field private emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;",
            ">;"
        }
    .end annotation
.end field

.field private flightId:Ljava/lang/String;

.field private squawk:I

.field private state:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControlState;",
            ">;"
        }
    .end annotation
.end field

.field private xBit:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;",
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
.method public final baroaltmsl(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Barometric pressure altitude (MSL)\n                relative to a standard atmosphere of 1013.2 mBar and NOT bar corrected altitude (m *\n                1E-3). (up +ve). If unknown set to INT32_MAX"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 258
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->baroaltmsl:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;
    .locals 9

    .line 365
    new-instance v8, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->state:Lio/dronefleet/mavlink/util/EnumValue;

    iget v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->baroaltmsl:I

    iget v3, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->squawk:I

    iget-object v4, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v5, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->flightId:Ljava/lang/String;

    iget-object v6, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->xBit:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl;-><init>(Lio/dronefleet/mavlink/util/EnumValue;IILio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$1;)V

    return-object v8
.end method

.method public final emergencystatus(Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0

    .line 294
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->emergencystatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final emergencystatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Emergency status"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 286
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final emergencystatus(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;"
        }
    .end annotation

    .line 308
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->emergencystatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs emergencystatus([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0

    .line 301
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->emergencystatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flightId(Ljava/lang/String;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x8
        description = "Flight Identification: 8 ASCII characters, \'0\'\n                through \'9\', \'A\' through \'Z\' or space. Spaces (0x20) used as a trailing pad\n                character, or when call sign is unavailable."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 324
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->flightId:Ljava/lang/String;

    return-object p0
.end method

.method public final squawk(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mode A code (typically 1200 [0x04B0] for VFR)"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 271
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->squawk:I

    return-object p0
.end method

.method public final state(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControlState;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0

    .line 228
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControlState;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADS-B transponder control state flags"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControlState;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 220
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->state:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final state(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;"
        }
    .end annotation

    .line 242
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs state([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0

    .line 235
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final xBit(Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0

    .line 347
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->xBit(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final xBit(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X-Bit\n                enable (military transponders only)"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbXbit;
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 339
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->xBit:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final xBit(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;"
        }
    .end annotation

    .line 361
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->xBit(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs xBit([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;
    .locals 0

    .line 354
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;->xBit(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutControl$Builder;

    move-result-object p1

    return-object p1
.end method
