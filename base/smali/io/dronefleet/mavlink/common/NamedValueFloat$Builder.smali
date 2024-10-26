.class public final Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;
.super Ljava/lang/Object;
.source "NamedValueFloat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/NamedValueFloat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private timeBootMs:J

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/NamedValueFloat;
    .locals 7

    .line 174
    new-instance v6, Lio/dronefleet/mavlink/common/NamedValueFloat;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;->timeBootMs:J

    iget-object v3, p0, Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;->name:Ljava/lang/String;

    iget v4, p0, Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;->value:F

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/NamedValueFloat;-><init>(JLjava/lang/String;FLio/dronefleet/mavlink/common/NamedValueFloat$1;)V

    return-object v6
.end method

.method public final name(Ljava/lang/String;)Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa
        description = "Name of the debug variable"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 156
    iput-object p1, p0, Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 142
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final value(F)Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Floating point value"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 169
    iput p1, p0, Lio/dronefleet/mavlink/common/NamedValueFloat$Builder;->value:F

    return-object p0
.end method
