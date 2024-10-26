.class public final Lio/dronefleet/mavlink/common/PlayTune$Builder;
.super Ljava/lang/Object;
.source "PlayTune.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/PlayTune;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private targetComponent:I

.field private targetSystem:I

.field private tune:Ljava/lang/String;

.field private tune2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/PlayTune;
    .locals 7

    .line 208
    new-instance v6, Lio/dronefleet/mavlink/common/PlayTune;

    iget v1, p0, Lio/dronefleet/mavlink/common/PlayTune$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/common/PlayTune$Builder;->targetComponent:I

    iget-object v3, p0, Lio/dronefleet/mavlink/common/PlayTune$Builder;->tune:Ljava/lang/String;

    iget-object v4, p0, Lio/dronefleet/mavlink/common/PlayTune$Builder;->tune2:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/PlayTune;-><init>(IILjava/lang/String;Ljava/lang/String;Lio/dronefleet/mavlink/common/PlayTune$1;)V

    return-object v6
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/common/PlayTune$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 174
    iput p1, p0, Lio/dronefleet/mavlink/common/PlayTune$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/common/PlayTune$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 161
    iput p1, p0, Lio/dronefleet/mavlink/common/PlayTune$Builder;->targetSystem:I

    return-object p0
.end method

.method public final tune(Ljava/lang/String;)Lio/dronefleet/mavlink/common/PlayTune$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x1e
        description = "tune in board specific format"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 188
    iput-object p1, p0, Lio/dronefleet/mavlink/common/PlayTune$Builder;->tune:Ljava/lang/String;

    return-object p0
.end method

.method public final tune2(Ljava/lang/String;)Lio/dronefleet/mavlink/common/PlayTune$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xc8
        description = "tune extension (appended to tune)"
        extension = true
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 203
    iput-object p1, p0, Lio/dronefleet/mavlink/common/PlayTune$Builder;->tune2:Ljava/lang/String;

    return-object p0
.end method
