.class public final Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;
.super Ljava/lang/Object;
.source "DeviceOpWriteReply.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x40
    description = "Write registers reply."
    id = 0x2afb
.end annotation


# instance fields
.field private final requestId:J

.field private final result:I


# direct methods
.method private constructor <init>(JI)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->requestId:J

    .line 28
    iput p3, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->result:I

    return-void
.end method

.method synthetic constructor <init>(JILio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;-><init>(JI)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 36
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;
    .locals 3

    .line 88
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 89
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 90
    new-instance v2, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;

    invoke-direct {v2, v0, v1, p0}, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;-><init>(JI)V

    return-object v2
.end method

.method public static serialize(Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x5

    .line 94
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->requestId:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 96
    iget p0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->result:I

    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8(I)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

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

    if-eqz p1, :cond_4

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;

    .line 68
    iget-wide v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->requestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->requestId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 69
    :cond_2
    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->result:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->result:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 76
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->requestId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x1f

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final requestId()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Request ID - copied from request."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 48
    iget-wide v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->requestId:J

    return-wide v0
.end method

.method public final result()I
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "0 for success, anything else is failure code."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 60
    iget v0, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->result:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceOpWriteReply{requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->requestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/DeviceOpWriteReply;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method