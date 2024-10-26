.class public final Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;
.super Ljava/lang/Object;
.source "OsdParamConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xc3
    description = "Configure an OSD parameter slot."
    id = 0x2b19
.end annotation


# instance fields
.field private final configType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;",
            ">;"
        }
    .end annotation
.end field

.field private final increment:F

.field private final maxValue:F

.field private final minValue:F

.field private final osdIndex:I

.field private final osdScreen:I

.field private final paramId:Ljava/lang/String;

.field private final requestId:J

.field private final targetComponent:I

.field private final targetSystem:I


# direct methods
.method private constructor <init>(IIJIILjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJII",
            "Ljava/lang/String;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;",
            ">;FFF)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetSystem:I

    .line 49
    iput p2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetComponent:I

    .line 50
    iput-wide p3, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->requestId:J

    .line 51
    iput p5, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdScreen:I

    .line 52
    iput p6, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdIndex:I

    .line 53
    iput-object p7, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->paramId:Ljava/lang/String;

    .line 54
    iput-object p8, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 55
    iput p9, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->minValue:F

    .line 56
    iput p10, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->maxValue:F

    .line 57
    iput p11, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->increment:F

    return-void
.end method

.method synthetic constructor <init>(IIJIILjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;FFFLio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p11}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;-><init>(IIJIILjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;FFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 65
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;
    .locals 12

    .line 244
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    .line 245
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v9

    .line 246
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v10

    .line 247
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v11

    .line 248
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 249
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 250
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 251
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    const/16 v0, 0x10

    .line 252
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v7

    .line 253
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;

    const/4 v8, 0x1

    invoke-static {v0, p0, v8}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v8

    .line 254
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;-><init>(IIJIILjava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;FFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x25

    .line 258
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 259
    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->requestId:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 260
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->minValue:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 261
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->maxValue:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 262
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->increment:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 263
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetSystem:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 264
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetComponent:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 265
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdScreen:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 266
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdIndex:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 267
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->paramId:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 268
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;

    iget-object p0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->configType:Lio/dronefleet/mavlink/util/EnumValue;

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
.method public final configType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Config type."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 156
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 199
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;

    .line 200
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetSystem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 201
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetComponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetComponent:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 202
    :cond_3
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->requestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->requestId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 203
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdScreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdScreen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 204
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 205
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->paramId:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->paramId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 206
    :cond_7
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 207
    :cond_8
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->minValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->minValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 208
    :cond_9
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->maxValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->maxValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 209
    :cond_a
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->increment:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->increment:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 216
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetSystem:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 217
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 218
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->requestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 219
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdScreen:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 220
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 221
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->paramId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 222
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 223
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->minValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 224
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->maxValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 225
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->increment:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final increment()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter increment."
        position = 0xa
        unitSize = 0x4
    .end annotation

    .line 192
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->increment:F

    return v0
.end method

.method public final maxValue()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter maximum value."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 180
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->maxValue:F

    return v0
.end method

.method public final minValue()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter minimum value."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->minValue:F

    return v0
.end method

.method public final osdIndex()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter display index."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 125
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdIndex:I

    return v0
.end method

.method public final osdScreen()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter screen index."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdScreen:I

    return v0
.end method

.method public final paramId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Onboard parameter id, terminated by NULL if the\n                length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte\n                if the length is exactly 16 chars - applications have to provide 16+1 bytes storage\n                if the ID is stored as string"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 143
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->paramId:Ljava/lang/String;

    return-object v0
.end method

.method public final requestId()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied to reply."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 101
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->requestId:J

    return-wide v0
.end method

.method public final targetComponent()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 89
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetComponent:I

    return v0
.end method

.method public final targetSystem()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 77
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetSystem:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OsdParamConfig{targetSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->targetComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->requestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", osdScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", osdIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->osdIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paramId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->paramId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", configType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->minValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->maxValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", increment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfig;->increment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
