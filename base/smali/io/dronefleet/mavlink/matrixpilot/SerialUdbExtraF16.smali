.class public final Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;
.super Ljava/lang/Object;
.source "SerialUdbExtraF16.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0xde
    description = "Backwards compatible version of SERIAL_UDB_EXTRA F16 format"
    id = 0xb4
.end annotation


# instance fields
.field private final sueIdDiyDronesUrl:[B

.field private final sueIdLeadPilot:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdLeadPilot:[B

    .line 28
    iput-object p2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdDiyDronesUrl:[B

    return-void
.end method

.method synthetic constructor <init>([B[BLio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;-><init>([B[B)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 36
    new-instance v0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;
    .locals 2

    const/16 v0, 0x28

    .line 92
    invoke-static {p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    const/16 v1, 0x46

    .line 93
    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint8Array(Ljava/nio/ByteBuffer;I)[B

    move-result-object p0

    .line 94
    new-instance v1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;

    invoke-direct {v1, v0, p0}, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;-><init>([B[B)V

    return-object v1
.end method

.method public static serialize(Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x6e

    .line 98
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdLeadPilot:[B

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 100
    iget-object p0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdDiyDronesUrl:[B

    const/16 v1, 0x46

    invoke-static {p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint8Array([BI)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;

    .line 72
    iget-object v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdLeadPilot:[B

    iget-object v3, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdLeadPilot:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 73
    :cond_2
    iget-object v2, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdDiyDronesUrl:[B

    iget-object p1, p1, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdDiyDronesUrl:[B

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

    .line 80
    iget-object v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdLeadPilot:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 81
    iget-object v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdDiyDronesUrl:[B

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final sueIdDiyDronesUrl()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x46
        description = "Serial UDB Extra URL of Lead\n                Pilot or Team"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 64
    iget-object v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdDiyDronesUrl:[B

    return-object v0
.end method

.method public final sueIdLeadPilot()[B
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x28
        description = "Serial UDB Extra Name of Expected\n                Lead Pilot"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 50
    iget-object v0, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdLeadPilot:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SerialUdbExtraF16{sueIdLeadPilot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdLeadPilot:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sueIdDiyDronesUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/matrixpilot/SerialUdbExtraF16;->sueIdDiyDronesUrl:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
