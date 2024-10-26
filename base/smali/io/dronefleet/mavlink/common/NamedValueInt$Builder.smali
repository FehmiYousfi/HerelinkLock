.class public final Lio/dronefleet/mavlink/common/NamedValueInt$Builder;
.super Ljava/lang/Object;
.source "NamedValueInt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/NamedValueInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private timeBootMs:J

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/NamedValueInt;
    .locals 7

    .line 176
    new-instance v6, Lio/dronefleet/mavlink/common/NamedValueInt;

    iget-wide v1, p0, Lio/dronefleet/mavlink/common/NamedValueInt$Builder;->timeBootMs:J

    iget-object v3, p0, Lio/dronefleet/mavlink/common/NamedValueInt$Builder;->name:Ljava/lang/String;

    iget v4, p0, Lio/dronefleet/mavlink/common/NamedValueInt$Builder;->value:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dronefleet/mavlink/common/NamedValueInt;-><init>(JLjava/lang/String;ILio/dronefleet/mavlink/common/NamedValueInt$1;)V

    return-object v6
.end method

.method public final name(Ljava/lang/String;)Lio/dronefleet/mavlink/common/NamedValueInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        arraySize = 0xa
        description = "Name of the debug variable"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 157
    iput-object p1, p0, Lio/dronefleet/mavlink/common/NamedValueInt$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final timeBootMs(J)Lio/dronefleet/mavlink/common/NamedValueInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (time since system\n                boot)."
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 143
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/NamedValueInt$Builder;->timeBootMs:J

    return-object p0
.end method

.method public final value(I)Lio/dronefleet/mavlink/common/NamedValueInt$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Signed integer value"
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 171
    iput p1, p0, Lio/dronefleet/mavlink/common/NamedValueInt$Builder;->value:I

    return-object p0
.end method
