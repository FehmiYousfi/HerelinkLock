.class public final Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;
.super Ljava/lang/Object;
.source "ScriptItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/paparazzi/ScriptItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private seq:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/paparazzi/ScriptItem;
    .locals 7

    .line 206
    new-instance v6, Lio/dronefleet/mavlink/paparazzi/ScriptItem;

    iget v1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;->seq:I

    iget-object v4, p0, Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;->name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/paparazzi/ScriptItem;-><init>(IIILjava/lang/String;Lio/dronefleet/mavlink/paparazzi/ScriptItem$1;)V

    return-object v6
.end method

.method public final name(Ljava/lang/String;)Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0x32
        description = "The name of the mission script, NULL terminated."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 201
    iput-object p1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final seq(I)Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Sequence"
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 187
    iput p1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;->seq:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 174
    iput p1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 161
    iput p1, p0, Lio/dronefleet/mavlink/paparazzi/ScriptItem$Builder;->targetSystem:I

    return-object p0
.end method
