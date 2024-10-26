.class public final Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;
.super Ljava/lang/Object;
.source "LoggingDataAcked.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LoggingDataAcked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private data:[B

.field private firstMessageOffset:I

.field private length:I

.field private sequence:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/LoggingDataAcked;
    .locals 9

    .line 282
    new-instance v8, Lio/dronefleet/mavlink/common/LoggingDataAcked;

    iget v1, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->sequence:I

    iget v4, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->length:I

    iget v5, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->firstMessageOffset:I

    iget-object v6, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->data:[B

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/common/LoggingDataAcked;-><init>(IIIII[BLio/dronefleet/mavlink/common/LoggingDataAcked$1;)V

    return-object v8
.end method

.method public final data([B)Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xf9
        description = "logged data"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 277
    iput-object p1, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->data:[B

    return-object p0
.end method

.method public final firstMessageOffset(I)Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "offset into data where\n                first message starts. This can be used for recovery, when a previous message got\n                lost (set to 255 if no start exists)."
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 263
    iput p1, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->firstMessageOffset:I

    return-object p0
.end method

.method public final length(I)Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "data length"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 247
    iput p1, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->length:I

    return-object p0
.end method

.method public final sequence(I)Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "sequence number (can wrap)"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 234
    iput p1, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->sequence:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "component ID of the target"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 221
    iput p1, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "system ID of the target"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 208
    iput p1, p0, Lio/dronefleet/mavlink/common/LoggingDataAcked$Builder;->targetSystem:I

    return-object p0
.end method
