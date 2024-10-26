.class public final Lio/dronefleet/mavlink/common/HighLatency2$Builder;
.super Ljava/lang/Object;
.source "HighLatency2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HighLatency2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private airspeed:I

.field private airspeedSp:I

.field private altitude:I

.field private autopilot:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            ">;"
        }
    .end annotation
.end field

.field private battery:I

.field private climbRate:I

.field private custom0:I

.field private custom1:I

.field private custom2:I

.field private customMode:I

.field private eph:I

.field private epv:I

.field private failureFlags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/HlFailureFlag;",
            ">;"
        }
    .end annotation
.end field

.field private groundspeed:I

.field private heading:I

.field private latitude:I

.field private longitude:I

.field private targetAltitude:I

.field private targetDistance:I

.field private targetHeading:I

.field private temperatureAir:I

.field private throttle:I

.field private timestamp:J

.field private type:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavType;",
            ">;"
        }
    .end annotation
.end field

.field private windHeading:I

.field private windspeed:I

.field private wpNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final airspeed(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed"
        position = 0xd
        unitSize = 0x1
    .end annotation

    .line 911
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->airspeed:I

    return-object p0
.end method

.method public final airspeedSp(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed setpoint"
        position = 0xe
        unitSize = 0x1
    .end annotation

    .line 924
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->airspeedSp:I

    return-object p0
.end method

.method public final altitude(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude above mean sea level"
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 831
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->altitude:I

    return-object p0
.end method

.method public final autopilot(Lio/dronefleet/mavlink/minimal/MavAutopilot;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0

    .line 760
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->autopilot(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final autopilot(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency2$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Autopilot type / class. Use\n                MAV_AUTOPILOT_INVALID for components that are not flight controllers."
        enumType = Lio/dronefleet/mavlink/minimal/MavAutopilot;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 751
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final autopilot(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency2$Builder;"
        }
    .end annotation

    .line 776
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->autopilot(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs autopilot([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0

    .line 768
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->autopilot(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final battery(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Battery level (-1 if field not\n                provided)."
        position = 0x16
        signed = true
        unitSize = 0x1
    .end annotation

    .line 1036
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->battery:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/HighLatency2;
    .locals 33

    move-object/from16 v0, p0

    .line 1131
    new-instance v31, Lio/dronefleet/mavlink/common/HighLatency2;

    move-object/from16 v1, v31

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->timestamp:J

    iget-object v4, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v5, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->autopilot:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->customMode:I

    iget v7, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->latitude:I

    iget v8, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->longitude:I

    iget v9, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->altitude:I

    iget v10, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->targetAltitude:I

    iget v11, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->heading:I

    iget v12, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->targetHeading:I

    iget v13, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->targetDistance:I

    iget v14, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->throttle:I

    iget v15, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->airspeed:I

    move-object/from16 v32, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->airspeedSp:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->groundspeed:I

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->windspeed:I

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->windHeading:I

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->eph:I

    move/from16 v20, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->epv:I

    move/from16 v21, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->temperatureAir:I

    move/from16 v22, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->climbRate:I

    move/from16 v23, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->battery:I

    move/from16 v24, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->wpNum:I

    move/from16 v25, v1

    iget-object v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    move-object/from16 v26, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->custom0:I

    move/from16 v27, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->custom1:I

    move/from16 v28, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->custom2:I

    move/from16 v29, v1

    const/16 v30, 0x0

    move-object/from16 v1, v32

    invoke-direct/range {v1 .. v30}, Lio/dronefleet/mavlink/common/HighLatency2;-><init>(JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/util/EnumValue;IIILio/dronefleet/mavlink/common/HighLatency2$1;)V

    return-object v31
.end method

.method public final climbRate(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum climb rate magnitude since\n                last message"
        position = 0x15
        signed = true
        unitSize = 0x1
    .end annotation

    .line 1021
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->climbRate:I

    return-object p0
.end method

.method public final custom0(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Field for custom payload."
        position = 0x19
        signed = true
        unitSize = 0x1
    .end annotation

    .line 1098
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->custom0:I

    return-object p0
.end method

.method public final custom1(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Field for custom payload."
        position = 0x1a
        signed = true
        unitSize = 0x1
    .end annotation

    .line 1112
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->custom1:I

    return-object p0
.end method

.method public final custom2(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Field for custom payload."
        position = 0x1b
        signed = true
        unitSize = 0x1
    .end annotation

    .line 1126
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->custom2:I

    return-object p0
.end method

.method public final customMode(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "A bitfield for use for\n                autopilot-specific flags (2 byte version)."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 789
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->customMode:I

    return-object p0
.end method

.method public final eph(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum error horizontal position since last\n                message"
        position = 0x12
        unitSize = 0x1
    .end annotation

    .line 977
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->eph:I

    return-object p0
.end method

.method public final epv(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Maximum error vertical position since last\n                message"
        position = 0x13
        unitSize = 0x1
    .end annotation

    .line 991
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->epv:I

    return-object p0
.end method

.method public final failureFlags(Lio/dronefleet/mavlink/common/HlFailureFlag;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0

    .line 1071
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->failureFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final failureFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/HlFailureFlag;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency2$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap of failure flags."
        enumType = Lio/dronefleet/mavlink/common/HlFailureFlag;
        position = 0x18
        unitSize = 0x2
    .end annotation

    .line 1063
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->failureFlags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final failureFlags(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency2$Builder;"
        }
    .end annotation

    .line 1085
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->failureFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs failureFlags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0

    .line 1078
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->failureFlags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final groundspeed(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Groundspeed"
        position = 0xf
        unitSize = 0x1
    .end annotation

    .line 937
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->groundspeed:I

    return-object p0
.end method

.method public final heading(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Heading"
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 858
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->heading:I

    return-object p0
.end method

.method public final latitude(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude"
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 803
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->latitude:I

    return-object p0
.end method

.method public final longitude(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude"
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 817
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->longitude:I

    return-object p0
.end method

.method public final targetAltitude(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude setpoint"
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 845
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->targetAltitude:I

    return-object p0
.end method

.method public final targetDistance(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance to target waypoint or\n                position"
        position = 0xb
        unitSize = 0x2
    .end annotation

    .line 885
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->targetDistance:I

    return-object p0
.end method

.method public final targetHeading(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Heading setpoint"
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 871
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->targetHeading:I

    return-object p0
.end method

.method public final temperatureAir(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Air temperature from airspeed\n                sensor"
        position = 0x14
        signed = true
        unitSize = 0x1
    .end annotation

    .line 1006
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->temperatureAir:I

    return-object p0
.end method

.method public final throttle(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Throttle"
        position = 0xc
        unitSize = 0x1
    .end annotation

    .line 898
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->throttle:I

    return-object p0
.end method

.method public final timestamp(J)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (milliseconds since boot or\n                Unix epoch)"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 699
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->timestamp:J

    return-object p0
.end method

.method public final type(Lio/dronefleet/mavlink/minimal/MavType;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0

    .line 722
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/minimal/MavType;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency2$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Type of the MAV (quadrotor,\n                helicopter, etc.)"
        enumType = Lio/dronefleet/mavlink/minimal/MavType;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 714
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->type:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final type(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/HighLatency2$Builder;"
        }
    .end annotation

    .line 736
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs type([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0

    .line 729
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->type(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/HighLatency2$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final windHeading(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Wind heading"
        position = 0x11
        unitSize = 0x1
    .end annotation

    .line 963
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->windHeading:I

    return-object p0
.end method

.method public final windspeed(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Windspeed"
        position = 0x10
        unitSize = 0x1
    .end annotation

    .line 950
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->windspeed:I

    return-object p0
.end method

.method public final wpNum(I)Lio/dronefleet/mavlink/common/HighLatency2$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Current waypoint number"
        position = 0x17
        unitSize = 0x2
    .end annotation

    .line 1049
    iput p1, p0, Lio/dronefleet/mavlink/common/HighLatency2$Builder;->wpNum:I

    return-object p0
.end method
