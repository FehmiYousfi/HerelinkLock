.class public final Lio/dronefleet/mavlink/common/FenceStatus;
.super Ljava/lang/Object;
.source "FenceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xbd
    description = "Status of geo-fencing. Sent in extended status stream when fencing\n                enabled."
    id = 0xa2
.end annotation


# instance fields
.field private final breachCount:I

.field private final breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/FenceMitigate;",
            ">;"
        }
    .end annotation
.end field

.field private final breachStatus:I

.field private final breachTime:J

.field private final breachType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/FenceBreach;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/FenceBreach;",
            ">;J",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/FenceMitigate;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachStatus:I

    .line 39
    iput p2, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachCount:I

    .line 40
    iput-object p3, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachType:Lio/dronefleet/mavlink/util/EnumValue;

    .line 41
    iput-wide p4, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachTime:J

    .line 42
    iput-object p6, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(IILio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/common/FenceStatus$1;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/common/FenceStatus;-><init>(IILio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/FenceStatus$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 50
    new-instance v0, Lio/dronefleet/mavlink/common/FenceStatus$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/FenceStatus$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/FenceStatus;
    .locals 8

    .line 152
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 153
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 154
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 155
    const-class v0, Lio/dronefleet/mavlink/common/FenceBreach;

    const/4 v3, 0x1

    invoke-static {v0, p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object v6

    .line 156
    const-class v0, Lio/dronefleet/mavlink/common/FenceMitigate;

    invoke-static {v0, p0, v3}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 157
    new-instance v7, Lio/dronefleet/mavlink/common/FenceStatus;

    move-object v0, v7

    move-object v3, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/common/FenceStatus;-><init>(IILio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;)V

    return-object v7
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/FenceStatus;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x9

    .line 161
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 162
    iget-wide v1, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachTime:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 163
    iget v1, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachCount:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 164
    iget v1, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachStatus:I

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 165
    const-class v1, Lio/dronefleet/mavlink/common/FenceBreach;

    iget-object v2, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachType:Lio/dronefleet/mavlink/util/EnumValue;

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

    .line 166
    const-class v1, Lio/dronefleet/mavlink/common/FenceMitigate;

    iget-object p0, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;

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
.method public final breachCount()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of fence breaches."
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 75
    iget v0, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachCount:I

    return v0
.end method

.method public final breachMitigation()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/FenceMitigate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Active action to\n                prevent fence breach"
        enumType = Lio/dronefleet/mavlink/common/FenceMitigate;
        extension = true
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 115
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public final breachStatus()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Breach status (0 if currently inside fence, 1\n                if outside)."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 63
    iget v0, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachStatus:I

    return v0
.end method

.method public final breachTime()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time (since boot) of last breach."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 100
    iget-wide v0, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachTime:J

    return-wide v0
.end method

.method public final breachType()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/FenceBreach;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Last breach type."
        enumType = Lio/dronefleet/mavlink/common/FenceBreach;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 88
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/FenceStatus;

    .line 123
    iget v2, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/FenceStatus;->breachStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 124
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/FenceStatus;->breachCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 125
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/FenceStatus;->breachType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 126
    :cond_4
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/common/FenceStatus;->breachTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 127
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/common/FenceStatus;->breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;

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
    .locals 4

    .line 134
    iget v0, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 135
    iget v0, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 136
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 137
    iget-wide v2, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 138
    iget-object v0, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FenceStatus{breachStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", breachCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", breachType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachType:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", breachTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", breachMitigation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/FenceStatus;->breachMitigation:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
