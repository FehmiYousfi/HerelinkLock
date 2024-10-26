.class public final Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;
.super Ljava/lang/Object;
.source "UavionixAdsbTransceiverHealthReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x4
    description = "Transceiver heartbeat with health report (updated every 10s)"
    id = 0x2713
.end annotation


# instance fields
.field private final rfhealth:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbRfHealth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbRfHealth;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;->rfhealth:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method

.method synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;-><init>(Lio/dronefleet/mavlink/util/EnumValue;)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 36
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;
    .locals 2

    .line 74
    const-class v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbRfHealth;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;I)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p0

    .line 75
    new-instance v0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;

    invoke-direct {v0, p0}, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;-><init>(Lio/dronefleet/mavlink/util/EnumValue;)V

    return-object v0
.end method

.method public static serialize(Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x1

    .line 79
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 80
    const-class v2, Lio/dronefleet/mavlink/uavionix/UavionixAdsbRfHealth;

    iget-object p0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;->rfhealth:Lio/dronefleet/mavlink/util/EnumValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/dronefleet/mavlink/util/EnumValue;->value()I

    move-result p0

    :goto_0
    invoke-static {v2, p0, v0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeEnum(Ljava/lang/Class;II)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;

    .line 57
    iget-object v2, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;->rfhealth:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object p1, p1, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;->rfhealth:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v2, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 64
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;->rfhealth:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    return v1
.end method

.method public final rfhealth()Lio/dronefleet/mavlink/util/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/uavionix/UavionixAdsbRfHealth;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADS-B transponder messages"
        enumType = Lio/dronefleet/mavlink/uavionix/UavionixAdsbRfHealth;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 49
    iget-object v0, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;->rfhealth:Lio/dronefleet/mavlink/util/EnumValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UavionixAdsbTransceiverHealthReport{rfhealth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dronefleet/mavlink/uavionix/UavionixAdsbTransceiverHealthReport;->rfhealth:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
