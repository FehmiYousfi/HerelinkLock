.class public final Lio/dronefleet/mavlink/slugs/SensorDiag;
.super Ljava/lang/Object;
.source "SensorDiag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x81
    description = "Diagnostic data Sensor MCU"
    id = 0xc4
.end annotation


# instance fields
.field private final char1:I

.field private final float1:F

.field private final float2:F

.field private final int1:I


# direct methods
.method private constructor <init>(FFII)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float1:F

    .line 32
    iput p2, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float2:F

    .line 33
    iput p3, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->int1:I

    .line 34
    iput p4, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->char1:I

    return-void
.end method

.method synthetic constructor <init>(FFIILio/dronefleet/mavlink/slugs/SensorDiag$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dronefleet/mavlink/slugs/SensorDiag;-><init>(FFII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 42
    new-instance v0, Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/SensorDiag$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/SensorDiag;
    .locals 4

    .line 126
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v0

    .line 127
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 128
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 129
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 130
    new-instance v3, Lio/dronefleet/mavlink/slugs/SensorDiag;

    invoke-direct {v3, v0, v1, v2, p0}, Lio/dronefleet/mavlink/slugs/SensorDiag;-><init>(FFII)V

    return-object v3
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/SensorDiag;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xb

    .line 134
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    iget v1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 136
    iget v1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 137
    iget v1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->int1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 138
    iget p0, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->char1:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final char1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Int 8 field 1"
        position = 0x4
        signed = true
        unitSize = 0x1
    .end annotation

    .line 92
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->char1:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/slugs/SensorDiag;

    .line 100
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/SensorDiag;->float1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 101
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/SensorDiag;->float2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 102
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->int1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/SensorDiag;->int1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 103
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->char1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/slugs/SensorDiag;->char1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final float1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Float field 1"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 54
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float1:F

    return v0
.end method

.method public final float2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Float field 2"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 66
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float2:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 110
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 112
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->int1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 113
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->char1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final int1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Int 16 field 1"
        position = 0x3
        signed = true
        unitSize = 0x2
    .end annotation

    .line 79
    iget v0, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->int1:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorDiag{float1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", float2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->float2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", int1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->int1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", char1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SensorDiag;->char1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
