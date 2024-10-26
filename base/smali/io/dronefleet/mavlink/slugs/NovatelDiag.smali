.class public final Lio/dronefleet/mavlink/slugs/NovatelDiag;
.super Ljava/lang/Object;
.source "NovatelDiag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x3b
    description = "Transmits the diagnostics data from the Novatel OEMStar GPS"
    id = 0xc3
.end annotation


# instance fields
.field private final csfails:I

.field private final possolage:F

.field private final postype:I

.field private final receiverstatus:J

.field private final solstatus:I

.field private final timestatus:I

.field private final veltype:I


# direct methods
.method private constructor <init>(IJIIIFI)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->timestatus:I

    .line 39
    iput-wide p2, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->receiverstatus:J

    .line 40
    iput p4, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->solstatus:I

    .line 41
    iput p5, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->postype:I

    .line 42
    iput p6, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->veltype:I

    .line 43
    iput p7, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->possolage:F

    .line 44
    iput p8, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->csfails:I

    return-void
.end method

.method synthetic constructor <init>(IJIIIFILio/dronefleet/mavlink/slugs/NovatelDiag$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/slugs/NovatelDiag;-><init>(IJIIIFI)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 52
    new-instance v0, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/NovatelDiag$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/NovatelDiag;
    .locals 9

    .line 181
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 182
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 183
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 184
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 185
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 186
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 187
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 188
    new-instance p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/slugs/NovatelDiag;-><init>(IJIIIFI)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/NovatelDiag;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0xe

    .line 192
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 193
    iget-wide v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->receiverstatus:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 194
    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->possolage:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 195
    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->csfails:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 196
    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->timestatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 197
    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->solstatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 198
    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->postype:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 199
    iget p0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->veltype:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final csfails()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Times the CRC has failed since boot"
        position = 0x7
        unitSize = 0x2
    .end annotation

    .line 138
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->csfails:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 145
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/slugs/NovatelDiag;

    .line 146
    iget v2, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->timestatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/NovatelDiag;->timestatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 147
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->receiverstatus:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/slugs/NovatelDiag;->receiverstatus:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 148
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->solstatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/NovatelDiag;->solstatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 149
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->postype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/NovatelDiag;->postype:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 150
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->veltype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/NovatelDiag;->veltype:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 151
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->possolage:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/slugs/NovatelDiag;->possolage:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 152
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->csfails:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/slugs/NovatelDiag;->csfails:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .locals 4

    .line 159
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->timestatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 160
    iget-wide v2, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->receiverstatus:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 161
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->solstatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 162
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->postype:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 163
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->veltype:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 164
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->possolage:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 165
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->csfails:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final possolage()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Age of the position solution"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 126
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->possolage:F

    return v0
.end method

.method public final postype()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "position type. See table 43 page 196"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 102
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->postype:I

    return v0
.end method

.method public final receiverstatus()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Status Bitfield. See table 69 page 350\n                Novatel OEMstar Manual"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 78
    iget-wide v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->receiverstatus:J

    return-wide v0
.end method

.method public final solstatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "solution Status. See table 44 page 197"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 90
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->solstatus:I

    return v0
.end method

.method public final timestatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The Time Status. See Table 8 page 27 Novatel\n                OEMStar Manual"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 65
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->timestatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NovatelDiag{timestatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->timestatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", receiverstatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->receiverstatus:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", solstatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->solstatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", postype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->postype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", veltype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->veltype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", possolage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->possolage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", csfails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->csfails:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final veltype()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "velocity type. See table 43 page 196"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 114
    iget v0, p0, Lio/dronefleet/mavlink/slugs/NovatelDiag;->veltype:I

    return v0
.end method
