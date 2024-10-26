.class public final Lio/dronefleet/mavlink/common/Collision;
.super Ljava/lang/Object;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/Collision$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x51
    description = "Information about a potential collision"
    id = 0xf7
.end annotation


# instance fields
.field private final action:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionAction;",
            ">;"
        }
    .end annotation
.end field

.field private final altitudeMinimumDelta:F

.field private final horizontalMinimumDelta:F

.field private final id:J

.field private final src:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionSrc;",
            ">;"
        }
    .end annotation
.end field

.field private final threatLevel:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionThreatLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final timeToMinimumDelta:F


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionSrc;",
            ">;J",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionAction;",
            ">;",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionThreatLevel;",
            ">;FFF)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Collision;->src:Lio/dronefleet/mavlink/util/EnumValue;

    .line 43
    iput-wide p2, p0, Lio/dronefleet/mavlink/common/Collision;->id:J

    .line 44
    iput-object p4, p0, Lio/dronefleet/mavlink/common/Collision;->action:Lio/dronefleet/mavlink/util/EnumValue;

    .line 45
    iput-object p5, p0, Lio/dronefleet/mavlink/common/Collision;->threatLevel:Lio/dronefleet/mavlink/util/EnumValue;

    .line 46
    iput p6, p0, Lio/dronefleet/mavlink/common/Collision;->timeToMinimumDelta:F

    .line 47
    iput p7, p0, Lio/dronefleet/mavlink/common/Collision;->altitudeMinimumDelta:F

    .line 48
    iput p8, p0, Lio/dronefleet/mavlink/common/Collision;->horizontalMinimumDelta:F

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFFLio/dronefleet/mavlink/common/Collision$1;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p8}, Lio/dronefleet/mavlink/common/Collision;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFF)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 56
    new-instance v0, Lio/dronefleet/mavlink/common/Collision$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/Collision$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/Collision;
    .locals 10

    .line 191
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

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
    const-class v0, Lio/dronefleet/mavlink/common/MavCollisionSrc;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v4

    .line 196
    const-class v0, Lio/dronefleet/mavlink/common/MavCollisionAction;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v5

    .line 197
    const-class v0, Lio/dronefleet/mavlink/common/MavCollisionThreatLevel;

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 198
    new-instance v9, Lio/dronefleet/mavlink/common/Collision;

    move-object v0, v9

    move-object v1, v4

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/common/Collision;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFF)V

    return-object v9
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/Collision;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x13

    .line 202
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/Collision;->id:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    iget v1, p0, Lio/dronefleet/mavlink/common/Collision;->timeToMinimumDelta:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 205
    iget v1, p0, Lio/dronefleet/mavlink/common/Collision;->altitudeMinimumDelta:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    iget v1, p0, Lio/dronefleet/mavlink/common/Collision;->horizontalMinimumDelta:F

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeFloat(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 207
    const-class v1, Lio/dronefleet/mavlink/common/MavCollisionSrc;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/Collision;->src:Lio/dronefleet/mavlink/util/EnumValue;

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
    const-class v1, Lio/dronefleet/mavlink/common/MavCollisionAction;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/Collision;->action:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v2

    :goto_1
    invoke-static {v1, v2, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 209
    const-class v1, Lio/dronefleet/mavlink/common/MavCollisionThreatLevel;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/Collision;->threatLevel:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result v3

    :goto_2
    invoke-static {v1, v3, v4}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final action()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionAction;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Action that is being\n                taken to avoid this collision"
        enumType = Lio/dronefleet/mavlink/common/MavCollisionAction;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 95
    iget-object v0, p0, Lio/dronefleet/mavlink/common/Collision;->action:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final altitudeMinimumDelta()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Closest vertical distance\n                between vehicle and object"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/common/Collision;->altitudeMinimumDelta:F

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
    check-cast p1, Lio/dronefleet/mavlink/common/Collision;

    .line 156
    iget-object v2, p0, Lio/dronefleet/mavlink/common/Collision;->src:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/Collision;->src:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 157
    :cond_2
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/Collision;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/Collision;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 158
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/Collision;->action:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/Collision;->action:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 159
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/common/Collision;->threatLevel:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/Collision;->threatLevel:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 160
    :cond_5
    iget v2, p0, Lio/dronefleet/mavlink/common/Collision;->timeToMinimumDelta:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/Collision;->timeToMinimumDelta:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 161
    :cond_6
    iget v2, p0, Lio/dronefleet/mavlink/common/Collision;->altitudeMinimumDelta:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/Collision;->altitudeMinimumDelta:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 162
    :cond_7
    iget v2, p0, Lio/dronefleet/mavlink/common/Collision;->horizontalMinimumDelta:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/common/Collision;->horizontalMinimumDelta:F

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
    .locals 4

    .line 169
    iget-object v0, p0, Lio/dronefleet/mavlink/common/Collision;->src:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 170
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/Collision;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 171
    iget-object v0, p0, Lio/dronefleet/mavlink/common/Collision;->action:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 172
    iget-object v0, p0, Lio/dronefleet/mavlink/common/Collision;->threatLevel:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 173
    iget v0, p0, Lio/dronefleet/mavlink/common/Collision;->timeToMinimumDelta:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 174
    iget v0, p0, Lio/dronefleet/mavlink/common/Collision;->altitudeMinimumDelta:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 175
    iget v0, p0, Lio/dronefleet/mavlink/common/Collision;->horizontalMinimumDelta:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final horizontalMinimumDelta()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Closest horizontal\n                distance between vehicle and object"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 148
    iget v0, p0, Lio/dronefleet/mavlink/common/Collision;->horizontalMinimumDelta:F

    return v0
.end method

.method public final id()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Unique identifier, domain based on src field"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 81
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/Collision;->id:J

    return-wide v0
.end method

.method public final src()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionSrc;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Collision data source"
        enumType = Lio/dronefleet/mavlink/common/MavCollisionSrc;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 69
    iget-object v0, p0, Lio/dronefleet/mavlink/common/Collision;->src:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final threatLevel()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionThreatLevel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "How\n                concerned the aircraft is about this collision"
        enumType = Lio/dronefleet/mavlink/common/MavCollisionThreatLevel;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 109
    iget-object v0, p0, Lio/dronefleet/mavlink/common/Collision;->threatLevel:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final timeToMinimumDelta()F
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimated time until\n                collision occurs"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 122
    iget v0, p0, Lio/dronefleet/mavlink/common/Collision;->timeToMinimumDelta:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collision{src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/Collision;->src:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/Collision;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/Collision;->action:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", threatLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/Collision;->threatLevel:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeToMinimumDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/Collision;->timeToMinimumDelta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", altitudeMinimumDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/Collision;->altitudeMinimumDelta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalMinimumDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/Collision;->horizontalMinimumDelta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
