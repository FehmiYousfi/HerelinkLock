.class public final Lio/dronefleet/mavlink/paparazzi/ScriptRequest$Builder;
.super Ljava/lang/Object;
.source "ScriptRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/paparazzi/ScriptRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private seq:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/paparazzi/ScriptRequest;
    .locals 5

    .line 169
    new-instance v0, Lio/dronefleet/mavlink/paparazzi/ScriptRequest;

    iget v1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptRequest$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/paparazzi/ScriptRequest$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/paparazzi/ScriptRequest$Builder;->seq:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/paparazzi/ScriptRequest;-><init>(IIILio/dronefleet/mavlink/paparazzi/ScriptRequest$1;)V

    return-object v0
.end method

.method public final seq(I)Lio/dronefleet/mavlink/paparazzi/ScriptRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sequence"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptRequest$Builder;->seq:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/paparazzi/ScriptRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 151
    iput p1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptRequest$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/paparazzi/ScriptRequest$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 138
    iput p1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptRequest$Builder;->targetSystem:I

    return-object p0
.end method
