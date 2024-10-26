.class public final Lio/dronefleet/mavlink/common/ParamValue;
.super Ljava/lang/Object;
.source "ParamValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/ParamValue$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xdc
    description = "Emit the value of a onboard parameter. The inclusion of param_count and\n                param_index in the message allows the recipient to keep track of received parameters\n                and allows him to re-request missing parameters after a loss or timeout. The\n                parameter microservice is documented at\n                https://mavlink.io/en/services/parameter.html"
    id = 0x16
.end annotation


# instance fields
.field private final paramCount:I

.field private final paramId:Ljava/lang/String;

.field private final paramIndex:I

.field private final paramType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamType;",
            ">;"
        }
    .end annotation
.end field

.field private final paramValue:F


# direct methods
.method private constructor <init>(Ljava/lang/String;FLio/dronefleet/mavlink/util/EnumValue;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamType;",
            ">;II)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramId:Ljava/lang/String;

    .line 45
    iput p2, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramValue:F

    .line 46
    iput-object p3, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 47
    iput p4, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramCount:I

    .line 48
    iput p5, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramIndex:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;FLio/dronefleet/mavlink/util/EnumValue;IILio/dronefleet/mavlink/common/ParamValue$1;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lio/dronefleet/mavlink/common/ParamValue;-><init>(Ljava/lang/String;FLio/dronefleet/mavlink/util/EnumValue;II)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/ParamValue$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/ParamValue$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/ParamValue$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/ParamValue;
    .locals 6

    .line 160
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 161
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 162
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v5

    const/16 v0, 0x10

    .line 163
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    .line 164
    const-class v0, Lio/dronefleet/mavlink/common/MavParamType;

    const/4 v3, 0x1

    invoke-static {v0, p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v3

    .line 165
    new-instance p0, Lio/dronefleet/mavlink/common/ParamValue;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/ParamValue;-><init>(Ljava/lang/String;FLio/dronefleet/mavlink/util/EnumValue;II)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/ParamValue;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x19

    .line 169
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 170
    iget v1, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramValue:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 171
    iget v1, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramCount:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 172
    iget v1, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramIndex:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 173
    iget-object v1, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramId:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 174
    const-class v1, Lio/dronefleet/mavlink/common/MavParamType;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

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
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/ParamValue;

    .line 131
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramId:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ParamValue;->paramId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 132
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ParamValue;->paramValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 133
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/ParamValue;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 134
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/ParamValue;->paramCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 135
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/ParamValue;->paramIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 142
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 143
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 144
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 145
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 146
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final paramCount()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of onboard parameters"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramCount:I

    return v0
.end method

.method public final paramId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Onboard parameter id, terminated by NULL if the\n                length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte\n                if the length is exactly 16 chars - applications have to provide 16+1 bytes storage\n                if the ID is stored as string"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 74
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramId:Ljava/lang/String;

    return-object v0
.end method

.method public final paramIndex()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Index of this onboard parameter"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 123
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramIndex:I

    return v0
.end method

.method public final paramType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavParamType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Onboard parameter type."
        enumType = Lio/dronefleet/mavlink/common/MavParamType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 99
    iget-object v0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final paramValue()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Onboard parameter value"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 86
    iget v0, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramValue:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamValue{paramId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paramValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", paramType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paramCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paramIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/ParamValue;->paramIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
