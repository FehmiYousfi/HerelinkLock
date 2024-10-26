.class public final Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;
.super Ljava/lang/Object;
.source "LocalPositionNedSystemGlobalOffset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xe7
    description = "The offset in X, Y, Z and yaw between the LOCAL_POSITION_NED messages of\n                MAV X and the global coordinate frame in NED coordinates. Coordinate frame is\n                right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)"
    id = 0x59
.end annotation


# instance fields
.field private final pitch:F

.field private final roll:F

.field private final timeBootMs:J

.field private final x:F

.field private final y:F

.field private final yaw:F

.field private final z:F


# direct methods
.method private constructor <init>(JFFFFFF)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->timeBootMs:J

    .line 43
    iput p3, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->x:F

    .line 44
    iput p4, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->y:F

    .line 45
    iput p5, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->z:F

    .line 46
    iput p6, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->roll:F

    .line 47
    iput p7, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->pitch:F

    .line 48
    iput p8, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->yaw:F

    return-void
.end method

.method synthetic constructor <init>(JFFFFFFLio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;-><init>(JFFFFFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;
    .locals 9

    .line 184
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 185
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v3

    .line 186
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v4

    .line 187
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v5

    .line 188
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v6

    .line 189
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v7

    .line 190
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeFloat(Ljava/nio/ByteBuffer;)F

    move-result v8

    .line 191
    new-instance p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;-><init>(JFFFFFF)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x1c

    .line 195
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 196
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->timeBootMs:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 197
    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->x:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->y:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 199
    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->z:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 200
    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->roll:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 201
    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->pitch:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 202
    iget p0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->yaw:F

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

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

    if-eqz p1, :cond_9

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 148
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;

    .line 149
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->timeBootMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->timeBootMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 150
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 151
    :cond_3
    iget v2, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 152
    :cond_4
    iget v2, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->z:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 153
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->roll:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->roll:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 154
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->pitch:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->pitch:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 155
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->yaw:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->yaw:F

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

    .line 162
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->timeBootMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 163
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 164
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 165
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->z:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 166
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->roll:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 167
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->pitch:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 168
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->yaw:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final pitch()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Pitch"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 129
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->pitch:F

    return v0
.end method

.method public final roll()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Roll"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 117
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->roll:F

    return v0
.end method

.method public final timeBootMs()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 69
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->timeBootMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalPositionNedSystemGlobalOffset{timeBootMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->timeBootMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", roll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->roll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->pitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->yaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "X Position"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 81
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->x:F

    return v0
.end method

.method public final y()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Y Position"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 93
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->y:F

    return v0
.end method

.method public final yaw()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Yaw"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 141
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->yaw:F

    return v0
.end method

.method public final z()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Z Position"
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 105
    iget v0, p0, Lio/dronefleet/mavlink/common/LocalPositionNedSystemGlobalOffset;->z:F

    return v0
.end method
