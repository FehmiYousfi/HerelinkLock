.class public final Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;
.super Ljava/lang/Object;
.source "OsdParamShowConfigReply.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xb1
    description = "Read configured OSD parameter reply."
    id = 0x2b1c
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

.field private final paramId:Ljava/lang/String;

.field private final requestId:J

.field private final result:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;",
            ">;",
            "Ljava/lang/String;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;",
            ">;FFF)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->requestId:J

    .line 43
    iput-object p3, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->result:Lio/dronefleet/mavlink/util/EnumValue;

    .line 44
    iput-object p4, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->paramId:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 46
    iput p6, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->minValue:F

    .line 47
    iput p7, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->maxValue:F

    .line 48
    iput p8, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->increment:F

    return-void
.end method

.method synthetic constructor <init>(JLio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;FFFLio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;-><init>(JLio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;FFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;
    .locals 10

    .line 191
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 192
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 193
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 194
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 195
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;

    const/4 v3, 0x1

    invoke-static {v0, p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    const/16 v0, 0x10

    .line 196
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v5

    .line 197
    const-class v0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;

    invoke-static {v0, p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 198
    new-instance v9, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;

    move-object v0, v9

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;-><init>(JLio/dronefleet/mavlink/util/EnumValue;Ljava/lang/String;Lio/dronefleet/mavlink/util/EnumValue;FFF)V

    return-object v9
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x22

    .line 202
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->requestId:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->minValue:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 205
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->maxValue:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->increment:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 207
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;

    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->result:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_0
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 208
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->paramId:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 209
    const-class v1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigType;

    iget-object p0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_1
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

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
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 112
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;

    .line 156
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->requestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->requestId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 157
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->result:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->result:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 158
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->paramId:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->paramId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 159
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 160
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->minValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->minValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 161
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->maxValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->maxValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 162
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->increment:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->increment:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 169
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->requestId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x1f

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 171
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->paramId:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->minValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 174
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->maxValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 175
    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->increment:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final increment()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter increment."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 148
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->increment:F

    return v0
.end method

.method public final maxValue()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter maximum value."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 136
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->maxValue:F

    return v0
.end method

.method public final minValue()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "OSD parameter minimum value."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 124
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->minValue:F

    return v0
.end method

.method public final paramId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Onboard parameter id, terminated by NULL if the\n                length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte\n                if the length is exactly 16 chars - applications have to provide 16+1 bytes storage\n                if the ID is stored as string"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 99
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->paramId:Ljava/lang/String;

    return-object v0
.end method

.method public final requestId()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied from request."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 68
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->requestId:J

    return-wide v0
.end method

.method public final result()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Config error type."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/OsdParamConfigError;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 81
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->result:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OsdParamShowConfigReply{requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->requestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->result:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paramId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->paramId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", configType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->configType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->minValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->maxValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", increment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/OsdParamShowConfigReply;->increment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
