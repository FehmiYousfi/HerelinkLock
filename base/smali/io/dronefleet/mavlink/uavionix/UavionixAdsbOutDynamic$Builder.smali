.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
.super Ljava/lang/Object;
.source "UavionixAdsbOutDynamic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accuracyhor:J

.field private accuracyvel:I

.field private accuracyvert:I

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

.field private gpsalt:I

.field private gpsfix:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;",
            ">;"
        }
    .end annotation
.end field

.field private gpslat:I

.field private gpslon:I

.field private numsats:I

.field private squawk:I

.field private state:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicState;",
            ">;"
        }
    .end annotation
.end field

.field private utctime:J

.field private velew:I

.field private velns:I

.field private velvert:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accuracyhor(J)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal accuracy in mm (m *\n                1E-3). If unknown set to UINT32_MAX"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 581
    iput-wide p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->accuracyhor:J

    return-object p0
.end method

.method public final accuracyvel(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Velocity accuracy in mm/s (m *\n                1E-3). If unknown set to UINT16_MAX"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 609
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->accuracyvel:I

    return-object p0
.end method

.method public final accuracyvert(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical accuracy in cm. If\n                unknown set to UINT16_MAX"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 595
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->accuracyvert:I

    return-object p0
.end method

.method public final baroaltmsl(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Barometric pressure altitude (MSL)\n                relative to a standard atmosphere of 1013.2 mBar and NOT bar corrected altitude (m *\n                1E-3). (up +ve). If unknown set to INT32_MAX"
        position = 0x7
        signed = true
        unitSize = 0x4
    .end annotation

    .line 567
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->baroaltmsl:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;
    .locals 23

    move-object/from16 v0, p0

    .line 743
    new-instance v21, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;

    move-object/from16 v1, v21

    iget-wide v2, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->utctime:J

    iget v4, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpslat:I

    iget v5, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpslon:I

    iget v6, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpsalt:I

    iget-object v7, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpsfix:Lio/dronefleet/mavlink/util/EnumValue;

    iget v8, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->numsats:I

    iget v9, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->baroaltmsl:I

    iget-wide v10, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->accuracyhor:J

    iget v12, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->accuracyvert:I

    iget v13, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->accuracyvel:I

    iget v14, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->velvert:I

    iget v15, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->velns:I

    move-object/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->velew:I

    move/from16 v16, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v17, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->state:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->squawk:I

    move/from16 v19, v1

    const/16 v20, 0x0

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic;-><init>(JIIILio/dronefleet/mavlink/util/EnumValue;IIJIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;ILio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$1;)V

    return-object v21
.end method

.method public final emergencystatus(Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0

    .line 677
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->emergencystatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final emergencystatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Emergency status"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbEmergencyStatus;
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 669
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->emergencystatus:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final emergencystatus(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;"
        }
    .end annotation

    .line 691
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->emergencystatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs emergencystatus([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0

    .line 684
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->emergencystatus(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gpsalt(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude (WGS84). UP +ve. If unknown set\n                to INT32_MAX"
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 500
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpsalt:I

    return-object p0
.end method

.method public final gpsfix(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0

    .line 523
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpsfix(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gpsfix(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0-1: no\n                fix, 2: 2D fix, 3: 3D fix, 4: DGPS, 5: RTK"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicGpsFix;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 515
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpsfix:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final gpsfix(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;"
        }
    .end annotation

    .line 537
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpsfix(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs gpsfix([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0

    .line 530
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpsfix(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gpslat(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude WGS84 (deg * 1E7). If unknown\n                set to INT32_MAX"
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 470
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpslat:I

    return-object p0
.end method

.method public final gpslon(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude WGS84 (deg * 1E7). If\n                unknown set to INT32_MAX"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 485
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->gpslon:I

    return-object p0
.end method

.method public final numsats(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible. If unknown set to\n                UINT8_MAX"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 550
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->numsats:I

    return-object p0
.end method

.method public final squawk(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Mode A code (typically 1200 [0x04B0] for VFR)"
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 738
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->squawk:I

    return-object p0
.end method

.method public final state(Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicState;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0

    .line 712
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicState;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADS-B transponder dynamic input state flags"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamicState;
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 704
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->state:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final state(Ljava/util/Collection;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;"
        }
    .end annotation

    .line 726
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs state([Ljava/lang/Enum;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0

    .line 719
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->state(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final utctime(J)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "UTC time in seconds since GPS epoch (Jan\n                6, 1980). If unknown set to UINT32_MAX"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 455
    iput-wide p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->utctime:J

    return-object p0
.end method

.method public final velew(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "East-West velocity over ground in cm/s\n                East +ve. If unknown set to INT16_MAX"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 654
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->velew:I

    return-object p0
.end method

.method public final velns(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "North-South velocity over ground in cm/s\n                North +ve. If unknown set to INT16_MAX"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 639
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->velns:I

    return-object p0
.end method

.method public final velvert(I)Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS vertical speed in cm/s. If unknown\n                set to INT16_MAX"
        position = 0xb
        signed = true
        unitSize = 0x2
    .end annotation

    .line 624
    iput p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbOutDynamic$Builder;->velvert:I

    return-object p0
.end method
