.class public final Lio/dronefleet/mavlink/common/HighLatency$Builder;
.super Ljava/lang/Object;
.source "HighLatency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HighLatency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private airspeed:I

.field private airspeedSp:I

.field private altitudeAmsl:I

.field private altitudeSp:I

.field private baseMode:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;"
        }
    .end annotation
.end field

.field private batteryRemaining:I

.field private climbRate:I

.field private customMode:J

.field private failsafe:I

.field private gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsFixType;",
            ">;"
        }
    .end annotation
.end field

.field private gpsNsat:I

.field private groundspeed:I

.field private heading:I

.field private headingSp:I

.field private landedState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:I

.field private longitude:I

.field private pitch:I

.field private roll:I

.field private temperature:I

.field private temperatureAir:I

.field private throttle:I

.field private wpDistance:I

.field private wpNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final airspeed(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "airspeed"
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 845
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->airspeed:I

    return-object p0
.end method

.method public final airspeedSp(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "airspeed setpoint"
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 858
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->airspeedSp:I

    return-object p0
.end method

.method public final altitudeAmsl(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude above mean sea level"
        position = 0xc
        signed = true
        unitSize = 0x2
    .end annotation

    .line 817
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->altitudeAmsl:I

    return-object p0
.end method

.method public final altitudeSp(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude setpoint relative to the\n                home position"
        position = 0xd
        signed = true
        unitSize = 0x2
    .end annotation

    .line 832
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->altitudeSp:I

    return-object p0
.end method

.method public final baseMode(Lio/dronefleet/mavlink/minimal/MavModeFlag;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0

    .line 643
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency$Builder;->baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavModeFlag;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of\n                enabled system modes."
        enumType = Lio/dronefleet/mavlink/minimal/MavModeFlag;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 635
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final baseMode(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency$Builder;"
        }
    .end annotation

    .line 657
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency$Builder;->baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs baseMode([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0

    .line 650
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency$Builder;->baseMode(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final batteryRemaining(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Remaining battery\n                (percentage)"
        position = 0x14
        unitSize = 0x1
    .end annotation

    .line 948
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->batteryRemaining:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/HighLatency;
    .locals 30

    move-object/from16 v0, p0

    .line 1023
    new-instance v28, Lio/dronefleet/mavlink/common/HighLatency;

    move-object/from16 v1, v28

    iget-object v2, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->baseMode:Lio/dronefleet/mavlink/util/EnumValue;

    iget-wide v3, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->customMode:J

    iget-object v5, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->roll:I

    iget v7, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->pitch:I

    iget v8, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->heading:I

    iget v9, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->throttle:I

    iget v10, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->headingSp:I

    iget v11, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->latitude:I

    iget v12, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->longitude:I

    iget v13, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->altitudeAmsl:I

    iget v14, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->altitudeSp:I

    iget v15, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->airspeed:I

    move-object/from16 v29, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->airspeedSp:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->groundspeed:I

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->climbRate:I

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->gpsNsat:I

    move/from16 v19, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->batteryRemaining:I

    move/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->temperature:I

    move/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->temperatureAir:I

    move/from16 v23, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->failsafe:I

    move/from16 v24, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->wpNum:I

    move/from16 v25, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->wpDistance:I

    move/from16 v26, v1

    const/16 v27, 0x0

    move-object/from16 v1, v29

    invoke-direct/range {v1 .. v27}, Lio/dronefleet/mavlink/common/HighLatency;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;IIIIIILio/dronefleet/mavlink/common/HighLatency$1;)V

    return-object v28
.end method

.method public final climbRate(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "climb rate"
        position = 0x11
        signed = true
        unitSize = 0x1
    .end annotation

    .line 885
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->climbRate:I

    return-object p0
.end method

.method public final customMode(J)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A bitfield for use for\n                autopilot-specific flags."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 670
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->customMode:J

    return-object p0
.end method

.method public final failsafe(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "failsafe (each bit represents a failsafe where\n                0=ok, 1=failsafe active (bit0:RC, bit1:batt, bit2:GPS, bit3:GCS, bit4:fence)"
        position = 0x17
        unitSize = 0x1
    .end annotation

    .line 992
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->failsafe:I

    return-object p0
.end method

.method public final gpsFixType(Lio/dronefleet/mavlink/common/GpsFixType;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0

    .line 921
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency$Builder;->gpsFixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gpsFixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/GpsFixType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GPS Fix type."
        enumType = Lio/dronefleet/mavlink/common/GpsFixType;
        position = 0x13
        unitSize = 0x1
    .end annotation

    .line 913
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->gpsFixType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final gpsFixType(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency$Builder;"
        }
    .end annotation

    .line 935
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency$Builder;->gpsFixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs gpsFixType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0

    .line 928
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency$Builder;->gpsFixType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gpsNsat(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of satellites visible. If unknown, set to\n                255"
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 899
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->gpsNsat:I

    return-object p0
.end method

.method public final groundspeed(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "groundspeed"
        position = 0x10
        unitSize = 0x1
    .end annotation

    .line 871
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->groundspeed:I

    return-object p0
.end method

.method public final heading(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "heading"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 747
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->heading:I

    return-object p0
.end method

.method public final headingSp(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "heading setpoint"
        position = 0x9
        signed = true
        unitSize = 0x2
    .end annotation

    .line 775
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->headingSp:I

    return-object p0
.end method

.method public final landedState(Lio/dronefleet/mavlink/common/MavLandedState;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0

    .line 693
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency$Builder;->landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavLandedState;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The landed state. Is\n                set to MAV_LANDED_STATE_UNDEFINED if landed state is unknown."
        enumType = Lio/dronefleet/mavlink/common/MavLandedState;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 685
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->landedState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final landedState(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency$Builder;"
        }
    .end annotation

    .line 707
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency$Builder;->landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs landedState([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0

    .line 700
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency$Builder;->landedState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final latitude(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0xa
        signed = true
        unitSize = 0x4
    .end annotation

    .line 789
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->latitude:I

    return-object p0
.end method

.method public final longitude(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0xb
        signed = true
        unitSize = 0x4
    .end annotation

    .line 803
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->longitude:I

    return-object p0
.end method

.method public final pitch(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "pitch"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 734
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->pitch:I

    return-object p0
.end method

.method public final roll(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "roll"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 720
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->roll:I

    return-object p0
.end method

.method public final temperature(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot temperature (degrees C)"
        position = 0x15
        signed = true
        unitSize = 0x1
    .end annotation

    .line 962
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->temperature:I

    return-object p0
.end method

.method public final temperatureAir(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Air temperature (degrees C)\n                from airspeed sensor"
        position = 0x16
        signed = true
        unitSize = 0x1
    .end annotation

    .line 977
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->temperatureAir:I

    return-object p0
.end method

.method public final throttle(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "throttle (percentage)"
        position = 0x8
        signed = true
        unitSize = 0x1
    .end annotation

    .line 761
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->throttle:I

    return-object p0
.end method

.method public final wpDistance(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "distance to target"
        position = 0x19
        unitSize = 0x2
    .end annotation

    .line 1018
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->wpDistance:I

    return-object p0
.end method

.method public final wpNum(I)Lio/dronefleet/mavlink/common/HighLatency$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "current waypoint number"
        position = 0x18
        unitSize = 0x1
    .end annotation

    .line 1005
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency$Builder;->wpNum:I

    return-object p0
.end method
