.class public final Lio/dronefleet/mavlink/common/LogRequestEnd$Builder;
.super Ljava/lang/Object;
.source "LogRequestEnd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/LogRequestEnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/LogRequestEnd;
    .locals 4

    .line 132
    new-instance v0, Lio/dronefleet/mavlink/common/LogRequestEnd;

    iget v1, p0, Lio/dronefleet/mavlink/common/LogRequestEnd$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/LogRequestEnd$Builder;->targetComponent:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/common/LogRequestEnd;-><init>(IILio/dronefleet/mavlink/common/LogRequestEnd$1;)V

    return-object v0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/LogRequestEnd$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 127
    iput p1, p0, Lio/dronefleet/mavlink/common/LogRequestEnd$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/LogRequestEnd$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 114
    iput p1, p0, Lio/dronefleet/mavlink/common/LogRequestEnd$Builder;->targetSystem:I

    return-object p0
.end method