.class public final Lio/dronefleet/mavlink/common/HilSensor$Builder;
.super Ljava/lang/Object;
.source "HilSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/HilSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private absPressure:F

.field private diffPressure:F

.field private fieldsUpdated:J

.field private id:I

.field private pressureAlt:F

.field private temperature:F

.field private timeUsec:Ljava/math/BigInteger;

.field private xacc:F

.field private xgyro:F

.field private xmag:F

.field private yacc:F

.field private ygyro:F

.field private ymag:F

.field private zacc:F

.field private zgyro:F

.field private zmag:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final absPressure(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Absolute pressure"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 572
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->absPressure:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/HilSensor;
    .locals 23

    move-object/from16 v0, p0

    .line 647
    new-instance v20, Lio/dronefleet/mavlink/common/HilSensor;

    move-object/from16 v1, v20

    iget-object v2, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->timeUsec:Ljava/math/BigInteger;

    iget v3, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->xacc:F

    iget v4, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->yacc:F

    iget v5, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->zacc:F

    iget v6, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->xgyro:F

    iget v7, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->ygyro:F

    iget v8, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->zgyro:F

    iget v9, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->xmag:F

    iget v10, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->ymag:F

    iget v11, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->zmag:F

    iget v12, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->absPressure:F

    iget v13, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->diffPressure:F

    iget v14, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->pressureAlt:F

    iget v15, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->temperature:F

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->fieldsUpdated:J

    move-wide/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->id:I

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lio/dronefleet/mavlink/common/HilSensor;-><init>(Ljava/math/BigInteger;FFFFFFFFFFFFFJILio/dronefleet/mavlink/common/HilSensor$1;)V

    return-object v20
.end method

.method public final diffPressure(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Differential pressure (airspeed)"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 585
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->diffPressure:F

    return-object p0
.end method

.method public final fieldsUpdated(J)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Bitmap for fields that\n                have updated since last message, bit 0 = xacc, bit 12: temperature, bit 31: full\n                reset of attitude/position/velocities/etc was performed in sim."
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 627
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->fieldsUpdated:J

    return-object p0
.end method

.method public final id(I)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sensor ID (zero indexed). Used for multiple sensor\n                inputs"
        extension = true
        position = 0x11
        unitSize = 0x1
    .end annotation

    .line 642
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->id:I

    return-object p0
.end method

.method public final pressureAlt(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude calculated from pressure"
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 598
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->pressureAlt:F

    return-object p0
.end method

.method public final temperature(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Temperature"
        position = 0xe
        unitSize = 0x4
    .end annotation

    .line 611
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->temperature:F

    return-object p0
.end method

.method public final timeUsec(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 439
    iput-object p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->timeUsec:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final xacc(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X acceleration"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 452
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->xacc:F

    return-object p0
.end method

.method public final xgyro(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around X axis in body\n                frame"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 492
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->xgyro:F

    return-object p0
.end method

.method public final xmag(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Magnetic field"
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 533
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->xmag:F

    return-object p0
.end method

.method public final yacc(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y acceleration"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 465
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->yacc:F

    return-object p0
.end method

.method public final ygyro(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around Y axis in body\n                frame"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 506
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->ygyro:F

    return-object p0
.end method

.method public final ymag(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Magnetic field"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 546
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->ymag:F

    return-object p0
.end method

.method public final zacc(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z acceleration"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 478
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->zacc:F

    return-object p0
.end method

.method public final zgyro(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Angular speed around Z axis in body\n                frame"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 520
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->zgyro:F

    return-object p0
.end method

.method public final zmag(F)Lio/dronefleet/mavlink/common/HilSensor$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Magnetic field"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 559
    iput p1, p0, Lio/dronefleet/mavlink/common/HilSensor$Builder;->zmag:F

    return-object p0
.end method
