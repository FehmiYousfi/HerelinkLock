.class public final Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;
.super Ljava/lang/Object;
.source "AdapTuning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x2e
    description = "Adaptive Controller tuning information."
    id = 0x2b02
.end annotation


# instance fields
.field private final achieved:F

.field private final axis:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;",
            ">;"
        }
    .end annotation
.end field

.field private final desired:F

.field private final error:F

.field private final f:F

.field private final fDot:F

.field private final omega:F

.field private final omegaDot:F

.field private final sigma:F

.field private final sigmaDot:F

.field private final theta:F

.field private final thetaDot:F

.field private final u:F


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;",
            ">;FFFFFFFFFFFF)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    .line 55
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->desired:F

    .line 56
    iput p3, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->achieved:F

    .line 57
    iput p4, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->error:F

    .line 58
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->theta:F

    .line 59
    iput p6, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omega:F

    .line 60
    iput p7, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigma:F

    .line 61
    iput p8, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->thetaDot:F

    .line 62
    iput p9, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omegaDot:F

    .line 63
    iput p10, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigmaDot:F

    .line 64
    iput p11, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->f:F

    .line 65
    iput p12, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->fDot:F

    .line 66
    iput p13, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->u:F

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFFFFFLio/dronefleet/mavlink/ardupilotmega/AdapTuning$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p13}, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;-><init>(Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 74
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;
    .locals 14

    .line 292
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 293
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 294
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 295
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 296
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 297
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 298
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 299
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 300
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 301
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 302
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v12

    .line 303
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v13

    .line 304
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v1

    .line 305
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;-><init>(Lio/dronefleet/mavlink/util/EnumValue;FFFFFFFFFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x31

    .line 309
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 310
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->desired:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 311
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->achieved:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 312
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->error:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 313
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->theta:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 314
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omega:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 315
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigma:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 316
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->thetaDot:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 317
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omegaDot:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 318
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigmaDot:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 319
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->f:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 320
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->fDot:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 321
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->u:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 322
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;

    iget-object p0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result p0

    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final achieved()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Achieved rate."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->achieved:F

    return v0
.end method

.method public final axis()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Axis."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/PidTuningAxis;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 87
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final desired()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Desired rate."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 99
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->desired:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 238
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;

    .line 239
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 240
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->desired:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->desired:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 241
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->achieved:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->achieved:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 242
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->error:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->error:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 243
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->theta:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->theta:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 244
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omega:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omega:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 245
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigma:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigma:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 246
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->thetaDot:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->thetaDot:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 247
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omegaDot:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omegaDot:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 248
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigmaDot:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigmaDot:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 249
    :cond_b
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->f:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->f:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 250
    :cond_c
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->fDot:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->fDot:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 251
    :cond_d
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->u:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->u:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_0
    return v1
.end method

.method public final error()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Error between model and vehicle."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->error:F

    return v0
.end method

.method public final f()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Projection operator value."
        position = 0xb
        unitSize = 0x4
    .end annotation

    .line 207
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->f:F

    return v0
.end method

.method public final fDot()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Projection operator derivative."
        position = 0xc
        unitSize = 0x4
    .end annotation

    .line 219
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->fDot:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 258
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 259
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->desired:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 260
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->achieved:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 261
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->error:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 262
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->theta:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 263
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omega:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 264
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigma:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 265
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->thetaDot:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 266
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omegaDot:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 267
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigmaDot:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 268
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->f:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 269
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->fDot:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 270
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->u:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final omega()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Omega estimated state predictor."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 147
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omega:F

    return v0
.end method

.method public final omegaDot()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Omega derivative."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 183
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omegaDot:F

    return v0
.end method

.method public final sigma()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sigma estimated state predictor."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 159
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigma:F

    return v0
.end method

.method public final sigmaDot()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sigma derivative."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 195
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigmaDot:F

    return v0
.end method

.method public final theta()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Theta estimated state predictor."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->theta:F

    return v0
.end method

.method public final thetaDot()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Theta derivative."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 171
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->thetaDot:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdapTuning{axis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->axis:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", desired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->desired:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", achieved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->achieved:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->error:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", theta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->theta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", omega="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omega:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sigma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", thetaDot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->thetaDot:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", omegaDot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->omegaDot:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sigmaDot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->sigmaDot:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fDot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->fDot:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->u:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "u adaptive controlled output command."
        position = 0xd
        unitSize = 0x4
    .end annotation

    .line 231
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/AdapTuning;->u:F

    return v0
.end method
