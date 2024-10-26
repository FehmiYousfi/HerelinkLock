.class public final Lio/dronefleet/mavlink/asluav/CommandIntStamped;
.super Ljava/lang/Object;
.source "CommandIntStamped.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x77
    description = "Message encoding a command with parameters as scaled integers and\n                additional metadata. Scaling depends on the actual command value."
    id = 0x4e
.end annotation


# instance fields
.field private final autocontinue:I

.field private final command:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;"
        }
    .end annotation
.end field

.field private final current:I

.field private final frame:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final param1:F

.field private final param2:F

.field private final param3:F

.field private final param4:F

.field private final targetComponent:I

.field private final targetSystem:I

.field private final utcTime:J

.field private final vehicleTimestamp:Ljava/math/BigInteger;

.field private final x:I

.field private final y:I

.field private final z:F


# direct methods
.method private constructor <init>(JLjava/math/BigInteger;IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIFFFFIIF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigInteger;",
            "II",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;IIFFFFIIF)V"
        }
    .end annotation

    move-object v0, p0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 64
    iput-wide v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->utcTime:J

    move-object v1, p3

    .line 65
    iput-object v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->vehicleTimestamp:Ljava/math/BigInteger;

    move v1, p4

    .line 66
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetSystem:I

    move v1, p5

    .line 67
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetComponent:I

    move-object v1, p6

    .line 68
    iput-object v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    move-object v1, p7

    .line 69
    iput-object v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->command:Lio/dronefleet/mavlink/util/EnumValue;

    move v1, p8

    .line 70
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->current:I

    move v1, p9

    .line 71
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->autocontinue:I

    move v1, p10

    .line 72
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param1:F

    move v1, p11

    .line 73
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param2:F

    move v1, p12

    .line 74
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param3:F

    move/from16 v1, p13

    .line 75
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param4:F

    move/from16 v1, p14

    .line 76
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->x:I

    move/from16 v1, p15

    .line 77
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->y:I

    move/from16 v1, p16

    .line 78
    iput v1, v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->z:F

    return-void
.end method

.method synthetic constructor <init>(JLjava/math/BigInteger;IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIFFFFIIFLio/dronefleet/mavlink/asluav/CommandIntStamped$1;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p16}, Lio/dronefleet/mavlink/asluav/CommandIntStamped;-><init>(JLjava/math/BigInteger;IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIFFFFIIF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 86
    new-instance v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/CommandIntStamped$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/asluav/CommandIntStamped;
    .locals 18

    move-object/from16 v0, p0

    .line 344
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v4

    .line 345
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 346
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 347
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 348
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v13

    .line 349
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v14

    .line 350
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v15

    .line 351
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt32(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 352
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v17

    .line 353
    const-class v1, Lio/dronefleet/mavlink/common/MavCmd;

    const/4 v5, 0x2

    invoke-static {v1, v0, v5}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v8

    .line 354
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 355
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 356
    const-class v1, Lio/dronefleet/mavlink/common/MavFrame;

    const/4 v7, 0x1

    invoke-static {v1, v0, v7}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v7

    .line 357
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 358
    invoke-static/range {p0 .. p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 359
    new-instance v0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;

    move-object v1, v0

    invoke-direct/range {v1 .. v17}, Lio/dronefleet/mavlink/asluav/CommandIntStamped;-><init>(JLjava/math/BigInteger;IILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIFFFFIIF)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/asluav/CommandIntStamped;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x2f

    .line 363
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->vehicleTimestamp:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 365
    iget-wide v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->utcTime:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 366
    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 367
    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 368
    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param3:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 369
    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param4:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 370
    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->x:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 371
    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->y:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt32(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 372
    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->z:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 373
    const-class v1, Lio/dronefleet/mavlink/common/MavCmd;

    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->command:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x2

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 374
    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 375
    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 376
    const-class v1, Lio/dronefleet/mavlink/common/MavFrame;

    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 377
    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->current:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 378
    iget p0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->autocontinue:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final autocontinue()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "autocontinue to next wp"
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 187
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->autocontinue:I

    return v0
.end method

.method public final command()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCmd;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The scheduled action for the\n                mission item, as defined by MAV_CMD enum"
        enumType = Lio/dronefleet/mavlink/common/MavCmd;
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 163
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->command:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final current()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "false:0, true:1"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 175
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->current:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 284
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;

    .line 285
    iget-wide v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->utcTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->utcTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 286
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->vehicleTimestamp:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->vehicleTimestamp:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 287
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 288
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 289
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 290
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->command:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->command:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 291
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->current:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->current:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 292
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->autocontinue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->autocontinue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 293
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 294
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 295
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param3:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param3:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 296
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param4:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param4:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 297
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 298
    :cond_e
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 299
    :cond_f
    iget v2, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->z:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v1

    :cond_10
    return v0

    :cond_11
    :goto_0
    return v1
.end method

.method public final frame()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavFrame;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The coordinate system of the\n                COMMAND, as defined by MAV_FRAME enum"
        enumType = Lio/dronefleet/mavlink/common/MavFrame;
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 149
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 306
    iget-wide v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->utcTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 307
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->vehicleTimestamp:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 308
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 309
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 310
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 311
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->command:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 312
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->current:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 313
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->autocontinue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 314
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 315
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 316
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param3:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 317
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param4:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 318
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 319
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 320
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final param1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM1, see MAV_CMD enum"
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 199
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param1:F

    return v0
.end method

.method public final param2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM2, see MAV_CMD enum"
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 211
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param2:F

    return v0
.end method

.method public final param3()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM3, see MAV_CMD enum"
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 223
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param3:F

    return v0
.end method

.method public final param4()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM4, see MAV_CMD enum"
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 235
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param4:F

    return v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommandIntStamped{utcTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->utcTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vehicleTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->vehicleTimestamp:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->frame:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->command:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->current:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autocontinue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->autocontinue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", param1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", param2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", param3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", param4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->param4:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final utcTime()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "UTC time, seconds elapsed since 01.01.1970"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 98
    iget-wide v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->utcTime:J

    return-wide v0
.end method

.method public final vehicleTimestamp()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Microseconds elapsed since vehicle\n                boot"
        position = 0x2
        unitSize = 0x8
    .end annotation

    .line 111
    iget-object v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->vehicleTimestamp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final x()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM5 / local: x position in meters * 1e4, global:\n                latitude in degrees * 10^7"
        position = 0xd
        signed = true
        unitSize = 0x4
    .end annotation

    .line 249
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->x:I

    return v0
.end method

.method public final y()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM6 / local: y position in meters * 1e4, global:\n                longitude in degrees * 10^7"
        position = 0xe
        signed = true
        unitSize = 0x4
    .end annotation

    .line 263
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->y:I

    return v0
.end method

.method public final z()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "PARAM7 / z position: global: altitude in meters (MSL,\n                WGS84, AGL or relative to home - depending on frame)."
        position = 0xf
        unitSize = 0x4
    .end annotation

    .line 277
    iget v0, p0, Lio/dronefleet/mavlink/asluav/CommandIntStamped;->z:F

    return v0
.end method
