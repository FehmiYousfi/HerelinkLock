.class public final Lio/dronefleet/mavlink/slugs/Boot;
.super Ljava/lang/Object;
.source "Boot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dronefleet/mavlink/slugs/Boot$Builder;
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageInfo;
    crc = 0x27
    description = "The boot message indicates that a system is starting. The onboard software\n                version allows to keep track of onboard soft/firmware revisions. This message allows\n                the sensor and control MCUs to communicate version numbers on startup."
    id = 0xc5
.end annotation


# instance fields
.field private final version:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lio/dronefleet/mavlink/slugs/Boot;->version:J

    return-void
.end method

.method synthetic constructor <init>(JLio/dronefleet/mavlink/slugs/Boot$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/slugs/Boot;-><init>(J)V

    return-void
.end method

.method public static builder()Lio/dronefleet/mavlink/slugs/Boot$Builder;
    .locals 1
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkMessageBuilder;
    .end annotation

    .line 37
    new-instance v0, Lio/dronefleet/mavlink/slugs/Boot$Builder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/Boot$Builder;-><init>()V

    return-object v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lio/dronefleet/mavlink/slugs/Boot;
    .locals 2

    .line 74
    invoke-static {p0}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->decodeUint32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 75
    new-instance p0, Lio/dronefleet/mavlink/slugs/Boot;

    invoke-direct {p0, v0, v1}, Lio/dronefleet/mavlink/slugs/Boot;-><init>(J)V

    return-object p0
.end method

.method public static serialize(Lio/dronefleet/mavlink/slugs/Boot;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x4

    .line 79
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    iget-wide v1, p0, Lio/dronefleet/mavlink/slugs/Boot;->version:J

    invoke-static {v1, v2}, Lio/dronefleet/mavlink/serialization/SerializationHelper;->encodeUint32(J)[B

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
    check-cast p1, Lio/dronefleet/mavlink/slugs/Boot;

    .line 57
    iget-wide v2, p0, Lio/dronefleet/mavlink/slugs/Boot;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lio/dronefleet/mavlink/slugs/Boot;->version:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

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
    iget-wide v0, p0, Lio/dronefleet/mavlink/slugs/Boot;->version:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boot{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/dronefleet/mavlink/slugs/Boot;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final version()J
    .locals 2
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The onboard software version"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 49
    iget-wide v0, p0, Lio/dronefleet/mavlink/slugs/Boot;->version:J

    return-wide v0
.end method
