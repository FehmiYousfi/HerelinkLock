.class public final Lio/dronefleet/mavlink/slugs/Diagnostic;
.super Ljava/lang/Object;
.source "Diagnostic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x2
    description = "Configurable diagnostic messages."
    id = 0xad
.end annotation


# instance fields
.field private final diagfl1:F

.field private final diagfl2:F

.field private final diagfl3:F

.field private final diagsh1:I

.field private final diagsh2:I

.field private final diagsh3:I


# direct methods
.method private constructor <init>(FFFIII)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl1:F

    .line 37
    iput p2, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl2:F

    .line 38
    iput p3, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl3:F

    .line 39
    iput p4, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh1:I

    .line 40
    iput p5, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh2:I

    .line 41
    iput p6, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh3:I

    return-void
.end method

.method synthetic constructor <init>(FFFIIILio/dronefleet/mavlink/slugs/Diagnostic$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/slugs/Diagnostic;-><init>(FFFIII)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 49
    new-instance v0, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/Diagnostic$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/Diagnostic;
    .locals 7

    .line 164
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    .line 165
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v2

    .line 166
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 167
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 168
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 169
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeInt16(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 170
    new-instance p0, Lio/dronefleet/mavlink/slugs/Diagnostic;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/slugs/Diagnostic;-><init>(FFFIII)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/Diagnostic;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x12

    .line 174
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 175
    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl1:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 176
    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl2:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 177
    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl3:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 178
    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh1:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 179
    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh2:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 180
    iget p0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh3:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeInt16(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final diagfl1()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic float 1"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 61
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl1:F

    return v0
.end method

.method public final diagfl2()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic float 2"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 73
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl2:F

    return v0
.end method

.method public final diagfl3()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic float 3"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 85
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl3:F

    return v0
.end method

.method public final diagsh1()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic short 1"
        position = 0x4
        signed = true
        unitSize = 0x2
    .end annotation

    .line 98
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh1:I

    return v0
.end method

.method public final diagsh2()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic short 2"
        position = 0x5
        signed = true
        unitSize = 0x2
    .end annotation

    .line 111
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh2:I

    return v0
.end method

.method public final diagsh3()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Diagnostic short 3"
        position = 0x6
        signed = true
        unitSize = 0x2
    .end annotation

    .line 124
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh3:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/slugs/Diagnostic;

    .line 132
    iget v2, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl1:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl1:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 133
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl2:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl2:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 134
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl3:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl3:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 135
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 136
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 137
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh3:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 144
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl1:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 145
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 146
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl3:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 147
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 148
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 149
    iget v0, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Diagnostic{diagfl1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", diagfl2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", diagfl3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagfl3:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", diagsh1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diagsh2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diagsh3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/Diagnostic;->diagsh3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
