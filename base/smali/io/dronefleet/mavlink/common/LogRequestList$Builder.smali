.class public final Lio/dronefleet/mavlink/common/LogRequestList$Builder;
.super Ljava/lang/Object;
.source "LogRequestList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LogRequestList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private end:I

.field private start:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/LogRequestList;
    .locals 7

    .line 207
    new-instance v6, Lio/dronefleet/mavlink/common/LogRequestList;

    iget v1, p0, Lio/dronefleet/mavlink/common/LogRequestList$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/LogRequestList$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/common/LogRequestList$Builder;->start:I

    iget v4, p0, Lio/dronefleet/mavlink/common/LogRequestList$Builder;->end:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/LogRequestList;-><init>(IIIILio/dronefleet/mavlink/common/LogRequestList$1;)V

    return-object v6
.end method

.method public final end(I)Lio/dronefleet/mavlink/common/LogRequestList$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Last log id (0xffff for last available)"
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 202
    iput p1, p0, Lio/dronefleet/mavlink/common/LogRequestList$Builder;->end:I

    return-object p0
.end method

.method public final start(I)Lio/dronefleet/mavlink/common/LogRequestList$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "First log id (0 for first available)"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 189
    iput p1, p0, Lio/dronefleet/mavlink/common/LogRequestList$Builder;->start:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/LogRequestList$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 176
    iput p1, p0, Lio/dronefleet/mavlink/common/LogRequestList$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/LogRequestList$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 163
    iput p1, p0, Lio/dronefleet/mavlink/common/LogRequestList$Builder;->targetSystem:I

    return-object p0
.end method
