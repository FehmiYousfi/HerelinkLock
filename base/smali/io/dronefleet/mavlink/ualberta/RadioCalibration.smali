.class public final Lio/dronefleet/mavlink/ualberta/RadioCalibration;
.super Ljava/lang/Object;
.source "RadioCalibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x47
    description = "Complete set of calibration parameters for the radio"
    id = 0xdd
.end annotation


# instance fields
.field private final aileron:[I

.field private final elevator:[I

.field private final gyro:[I

.field private final pitch:[I

.field private final rudder:[I

.field private final throttle:[I


# direct methods
.method private constructor <init>([I[I[I[I[I[I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->aileron:[I

    .line 37
    iput-object p2, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->elevator:[I

    .line 38
    iput-object p3, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->rudder:[I

    .line 39
    iput-object p4, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->gyro:[I

    .line 40
    iput-object p5, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->pitch:[I

    .line 41
    iput-object p6, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->throttle:[I

    return-void
.end method

.method synthetic constructor <init>([I[I[I[I[I[ILio/dronefleet/mavlink/ualberta/RadioCalibration$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/ualberta/RadioCalibration;-><init>([I[I[I[I[I[I)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 49
    new-instance v0, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ualberta/RadioCalibration$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ualberta/RadioCalibration;
    .locals 8

    const/4 v0, 0x6

    .line 170
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v2

    .line 171
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v3

    .line 172
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v4

    const/4 v0, 0x4

    .line 173
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v5

    const/16 v0, 0xa

    .line 174
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v6

    .line 175
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v7

    .line 176
    new-instance p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lio/dronefleet/mavlink/ualberta/RadioCalibration;-><init>([I[I[I[I[I[I)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ualberta/RadioCalibration;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x2a

    .line 180
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->aileron:[I

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 182
    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->elevator:[I

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 183
    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->rudder:[I

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->gyro:[I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 185
    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->pitch:[I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 186
    iget-object p0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->throttle:[I

    invoke-static {p0, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final aileron()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Aileron setpoints: left, center, right"
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 62
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->aileron:[I

    return-object v0
.end method

.method public final elevator()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Elevator setpoints: nose down, center, nose\n                up"
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 76
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->elevator:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ualberta/RadioCalibration;

    .line 138
    iget-object v2, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->aileron:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->aileron:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 139
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->elevator:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->elevator:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 140
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->rudder:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->rudder:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 141
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->gyro:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->gyro:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 142
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->pitch:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->pitch:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 143
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->throttle:[I

    iget-object p1, p1, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->throttle:[I

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

.method public final gyro()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x2
        description = "Tail gyro mode/gain setpoints: heading hold, rate\n                mode"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 104
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->gyro:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 150
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->aileron:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 151
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->elevator:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 152
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->rudder:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 153
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->gyro:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 154
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->pitch:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 155
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->throttle:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final pitch()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x5
        description = "Pitch curve setpoints (every 25%)"
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 117
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->pitch:[I

    return-object v0
.end method

.method public final rudder()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x3
        description = "Rudder setpoints: nose left, center, nose\n                right"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 90
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->rudder:[I

    return-object v0
.end method

.method public final throttle()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x5
        description = "Throttle curve setpoints (every 25%)"
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 130
    iget-object v0, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->throttle:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioCalibration{aileron="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->aileron:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", elevator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->elevator:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rudder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->rudder:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gyro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->gyro:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->pitch:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", throttle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ualberta/RadioCalibration;->throttle:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
