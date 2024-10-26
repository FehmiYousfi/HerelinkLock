.class public final Lio/dronefleet/mavlink/common/WheelDistance;
.super Ljava/lang/Object;
.source "WheelDistance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/common/WheelDistance$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x71
    description = "Cumulative distance traveled for each reported wheel."
    id = 0x2328
.end annotation


# instance fields
.field private final count:I

.field private final distance:[D

.field private final timeUsec:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;I[D)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/dronefleet/mavlink/common/WheelDistance;->timeUsec:Ljava/math/BigInteger;

    .line 31
    iput p2, p0, Lio/dronefleet/mavlink/common/WheelDistance;->count:I

    .line 32
    iput-object p3, p0, Lio/dronefleet/mavlink/common/WheelDistance;->distance:[D

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;I[DLio/dronefleet/mavlink/common/WheelDistance$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/common/WheelDistance;-><init>(Ljava/math/BigInteger;I[D)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/common/WheelDistance$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 40
    new-instance v0, Lio/dronefleet/mavlink/common/WheelDistance$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/WheelDistance$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/common/WheelDistance;
    .locals 3

    .line 114
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint64(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x80

    .line 115
    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeDoubleArray(Ljava/nio/ByteBuffer;I)[D

    move-result-object v1

    .line 116
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 117
    new-instance v2, Lio/dronefleet/mavlink/common/WheelDistance;

    invoke-direct {v2, v0, p0, v1}, Lio/dronefleet/mavlink/common/WheelDistance;-><init>(Ljava/math/BigInteger;I[D)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/common/WheelDistance;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x89

    .line 121
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lio/dronefleet/mavlink/common/WheelDistance;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint64(Ljava/math/BigInteger;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 123
    iget-object v1, p0, Lio/dronefleet/mavlink/common/WheelDistance;->distance:[D

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeDoubleArray([DI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 124
    iget p0, p0, Lio/dronefleet/mavlink/common/WheelDistance;->count:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final count()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of wheels reported."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 65
    iget v0, p0, Lio/dronefleet/mavlink/common/WheelDistance;->count:I

    return v0
.end method

.method public final distance()[D
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x10
        description = "Distance reported by individual wheel\n                encoders. Forward rotations increase values, reverse rotations decrease them. Not\n                all wheels will necessarily have wheel encoders; the mapping of encoders to wheel\n                positions must be agreed/understood by the endpoints."
        position = 0x3
        unitSize = 0x8
    .end annotation

    .line 83
    iget-object v0, p0, Lio/dronefleet/mavlink/common/WheelDistance;->distance:[D

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/common/WheelDistance;

    .line 91
    iget-object v2, p0, Lio/dronefleet/mavlink/common/WheelDistance;->timeUsec:Ljava/math/BigInteger;

    iget-object v3, p1, Lio/dronefleet/mavlink/common/WheelDistance;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 92
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/common/WheelDistance;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lio/dronefleet/mavlink/common/WheelDistance;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 93
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/common/WheelDistance;->distance:[D

    iget-object p1, p1, Lio/dronefleet/mavlink/common/WheelDistance;->distance:[D

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

    .line 100
    iget-object v0, p0, Lio/dronefleet/mavlink/common/WheelDistance;->timeUsec:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 101
    iget v0, p0, Lio/dronefleet/mavlink/common/WheelDistance;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 102
    iget-object v0, p0, Lio/dronefleet/mavlink/common/WheelDistance;->distance:[D

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final timeUsec()Ljava/math/BigInteger;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (synced to UNIX time or\n                since system boot)."
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 53
    iget-object v0, p0, Lio/dronefleet/mavlink/common/WheelDistance;->timeUsec:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WheelDistance{timeUsec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/WheelDistance;->timeUsec:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/common/WheelDistance;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/WheelDistance;->distance:[D

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
