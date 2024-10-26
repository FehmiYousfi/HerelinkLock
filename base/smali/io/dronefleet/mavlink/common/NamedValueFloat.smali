.class public final Lio/dronefleet/mavlink/common/NamedValueFloat;
.super Ljava/lang/Object;
.source "NamedValueFloat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xaa
    description = "Send a key-value pair as float. The use of this message is discouraged for\n                normal packets, but a quite efficient way for testing new messages and getting\n                experimental debug output."
    id = 0xfb
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final timeBootMs:J

.field private final value:F


# direct methods
.method private constructor <init>(JLjava/lang/String;F)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->timeBootMs:J

    .line 33
    iput-object p3, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->name:Ljava/lang/String;

    .line 34
    iput p4, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->value:F

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;FLio/dronefleet/mavlink/common/NamedValueFloat$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/common/NamedValueFloat;-><init>(JLjava/lang/String;F)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 42
    new-instance v0, Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/NamedValueFloat;
    .locals 4

    .line 111
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 112
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    const/16 v3, 0xa

    .line 113
    invoke-static {p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    .line 114
    new-instance v3, Lio/dronefleet/mavlink/common/NamedValueFloat;

    invoke-direct {v3, v0, v1, p0, v2}, Lio/dronefleet/mavlink/common/NamedValueFloat;-><init>(JLjava/lang/String;F)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/NamedValueFloat;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x12

    .line 118
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    iget v1, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->value:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 121
    iget-object p0, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->name:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeString(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/NamedValueFloat;

    .line 88
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/NamedValueFloat;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 89
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/NamedValueFloat;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 90
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/NamedValueFloat;->value:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 97
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 98
    iget-object v0, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 99
    iget v0, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final name()Ljava/lang/String;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa
        description = "Name of the debug variable"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 68
    iget-object v0, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 55
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NamedValueFloat{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Floating point value"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 80
    iget v0, p0, Lio/dronefleet/mavlink/common/NamedValueFloat;->value:F

    return v0
.end method
