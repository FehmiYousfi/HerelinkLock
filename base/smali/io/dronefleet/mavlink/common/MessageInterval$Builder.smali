.class public final Lio/dronefleet/mavlink/common/MessageInterval$Builder;
.super Ljava/lang/Object;
.source "MessageInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/MessageInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private intervalUs:I

.field private messageId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/MessageInterval;
    .locals 4

    .line 146
    new-instance v0, Lio/dronefleet/mavlink/common/MessageInterval;

    iget v1, p0, Lio/dronefleet/mavlink/common/MessageInterval$Builder;->messageId:I

    iget v2, p0, Lio/dronefleet/mavlink/common/MessageInterval$Builder;->intervalUs:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/common/MessageInterval;-><init>(IILio/dronefleet/mavlink/common/MessageInterval$1;)V

    return-object v0
.end method

.method public final intervalUs(I)Lio/dronefleet/mavlink/common/MessageInterval$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The interval between two messages. A\n                value of -1 indicates this stream is disabled, 0 indicates it is not available, >\n                0 indicates the interval at which it is sent."
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 141
    iput p1, p0, Lio/dronefleet/mavlink/common/MessageInterval$Builder;->intervalUs:I

    return-object p0
.end method

.method public final messageId(I)Lio/dronefleet/mavlink/common/MessageInterval$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The ID of the requested MAVLink message. v1.0\n                is limited to 254 messages."
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 124
    iput p1, p0, Lio/dronefleet/mavlink/common/MessageInterval$Builder;->messageId:I

    return-object p0
.end method
