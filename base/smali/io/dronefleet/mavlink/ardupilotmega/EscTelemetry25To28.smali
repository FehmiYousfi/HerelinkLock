.class public final Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;
.super Ljava/lang/Object;
.source "EscTelemetry25To28.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xc1
    description = "ESC Telemetry Data for ESCs 25 to 28, matching data sent by BLHeli ESCs."
    id = 0x2b23
.end annotation


# instance fields
.field private final count:[I

.field private final current:[I

.field private final rpm:[I

.field private final temperature:[B

.field private final totalcurrent:[I

.field private final voltage:[I


# direct methods
.method private constructor <init>([B[I[I[I[I[I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->temperature:[B

    .line 37
    iput-object p2, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->voltage:[I

    .line 38
    iput-object p3, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->current:[I

    .line 39
    iput-object p4, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->totalcurrent:[I

    .line 40
    iput-object p5, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->rpm:[I

    .line 41
    iput-object p6, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->count:[I

    return-void
.end method

.method synthetic constructor <init>([B[I[I[I[I[ILio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p6}, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;-><init>([B[I[I[I[I[I)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 49
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;
    .locals 8

    const/16 v0, 0x8

    .line 168
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v3

    .line 169
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v4

    .line 170
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v5

    .line 171
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v6

    .line 172
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint16Array(Ljava/nio/ByteBuffer;I)[I

    move-result-object v7

    const/4 v0, 0x4

    .line 173
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v2

    .line 174
    new-instance p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;-><init>([B[I[I[I[I[I)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x2c

    .line 178
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->voltage:[I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->current:[I

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 181
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->totalcurrent:[I

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 182
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->rpm:[I

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 183
    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->count:[I

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint16Array([II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    iget-object p0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->temperature:[B

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final count()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "count of telemetry packets received (wraps at\n                65535)."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 128
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->count:[I

    return-object v0
.end method

.method public final current()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Current."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 88
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->current:[I

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

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;

    .line 136
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->temperature:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->temperature:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 137
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->voltage:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->voltage:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 138
    :cond_3
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->current:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->current:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 139
    :cond_4
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->totalcurrent:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->totalcurrent:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 140
    :cond_5
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->rpm:[I

    iget-object v3, p1, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->rpm:[I

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 141
    :cond_6
    iget-object v2, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->count:[I

    iget-object p1, p1, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->count:[I

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

    .line 148
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->temperature:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 149
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->voltage:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 150
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->current:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 151
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->totalcurrent:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 152
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->rpm:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 153
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->count:[I

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final rpm()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "RPM (eRPM)."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 114
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->rpm:[I

    return-object v0
.end method

.method public final temperature()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Temperature."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 62
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->temperature:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EscTelemetry25To28{temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->temperature:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->voltage:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->current:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalcurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->totalcurrent:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->rpm:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->count:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final totalcurrent()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Total current."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 101
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->totalcurrent:[I

    return-object v0
.end method

.method public final voltage()[I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x4
        description = "Voltage."
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 75
    iget-object v0, p0, Lio/dronefleet/mavlink/ardupilotmega/EscTelemetry25To28;->voltage:[I

    return-object v0
.end method
