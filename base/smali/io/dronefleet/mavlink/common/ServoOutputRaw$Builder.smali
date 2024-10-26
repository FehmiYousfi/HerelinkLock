.class public final Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
.super Ljava/lang/Object;
.source "ServoOutputRaw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/ServoOutputRaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private port:I

.field private servo10Raw:I

.field private servo11Raw:I

.field private servo12Raw:I

.field private servo13Raw:I

.field private servo14Raw:I

.field private servo15Raw:I

.field private servo16Raw:I

.field private servo1Raw:I

.field private servo2Raw:I

.field private servo3Raw:I

.field private servo4Raw:I

.field private servo5Raw:I

.field private servo6Raw:I

.field private servo7Raw:I

.field private servo8Raw:I

.field private servo9Raw:I

.field private timeUsec:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/ServoOutputRaw;
    .locals 24

    move-object/from16 v0, p0

    .line 725
    new-instance v22, Lio/dronefleet/mavlink/common/ServoOutputRaw;

    move-object/from16 v1, v22

    iget-wide v2, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->timeUsec:J

    iget v4, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->port:I

    iget v5, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo1Raw:I

    iget v6, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo2Raw:I

    iget v7, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo3Raw:I

    iget v8, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo4Raw:I

    iget v9, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo5Raw:I

    iget v10, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo6Raw:I

    iget v11, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo7Raw:I

    iget v12, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo8Raw:I

    iget v13, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo9Raw:I

    iget v14, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo10Raw:I

    iget v15, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo11Raw:I

    move-object/from16 v23, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo12Raw:I

    move/from16 v16, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo13Raw:I

    move/from16 v17, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo14Raw:I

    move/from16 v18, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo15Raw:I

    move/from16 v19, v1

    iget v1, v0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo16Raw:I

    move/from16 v20, v1

    const/16 v21, 0x0

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Lio/dronefleet/mavlink/common/ServoOutputRaw;-><init>(JIIIIIIIIIIIIIIIIILio/dronefleet/mavlink/common/ServoOutputRaw$1;)V

    return-object v22
.end method

.method public final port(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output port (set of 8 outputs = 1 port). Flight\n                stacks running on Pixhawk should use: 0 = MAIN, 1 = AUX."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 504
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->port:I

    return-object p0
.end method

.method public final servo10Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 10 value"
        extension = true
        position = 0xd
        unitSize = 0x2
    .end annotation

    .line 636
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo10Raw:I

    return-object p0
.end method

.method public final servo11Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 11 value"
        extension = true
        position = 0xe
        unitSize = 0x2
    .end annotation

    .line 650
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo11Raw:I

    return-object p0
.end method

.method public final servo12Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 12 value"
        extension = true
        position = 0xf
        unitSize = 0x2
    .end annotation

    .line 664
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo12Raw:I

    return-object p0
.end method

.method public final servo13Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 13 value"
        extension = true
        position = 0x10
        unitSize = 0x2
    .end annotation

    .line 678
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo13Raw:I

    return-object p0
.end method

.method public final servo14Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 14 value"
        extension = true
        position = 0x11
        unitSize = 0x2
    .end annotation

    .line 692
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo14Raw:I

    return-object p0
.end method

.method public final servo15Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 15 value"
        extension = true
        position = 0x12
        unitSize = 0x2
    .end annotation

    .line 706
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo15Raw:I

    return-object p0
.end method

.method public final servo16Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 16 value"
        extension = true
        position = 0x13
        unitSize = 0x2
    .end annotation

    .line 720
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo16Raw:I

    return-object p0
.end method

.method public final servo1Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 1 value"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 517
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo1Raw:I

    return-object p0
.end method

.method public final servo2Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 2 value"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 530
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo2Raw:I

    return-object p0
.end method

.method public final servo3Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 3 value"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 543
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo3Raw:I

    return-object p0
.end method

.method public final servo4Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 4 value"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 556
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo4Raw:I

    return-object p0
.end method

.method public final servo5Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 5 value"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 569
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo5Raw:I

    return-object p0
.end method

.method public final servo6Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 6 value"
        position = 0x8
        unitSize = 0x2
    .end annotation

    .line 582
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo6Raw:I

    return-object p0
.end method

.method public final servo7Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 7 value"
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 595
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo7Raw:I

    return-object p0
.end method

.method public final servo8Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 8 value"
        position = 0xa
        unitSize = 0x2
    .end annotation

    .line 608
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo8Raw:I

    return-object p0
.end method

.method public final servo9Raw(I)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Servo output 9 value"
        extension = true
        position = 0xc
        unitSize = 0x2
    .end annotation

    .line 622
    iput p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->servo9Raw:I

    return-object p0
.end method

.method public final timeUsec(J)Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (UNIX Epoch time or time\n                since system boot). The receiving end can infer timestamp format (since 1.1.1970 or\n                since system boot) by checking for the magnitude of the number."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 489
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/ServoOutputRaw$Builder;->timeUsec:J

    return-object p0
.end method
