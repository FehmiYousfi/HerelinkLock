.class public final Lio/dronefleet/mavlink/common/RawRpm$Builder;
.super Ljava/lang/Object;
.source "RawRpm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/RawRpm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private frequency:F

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/common/RawRpm;
    .locals 4

    .line 139
    new-instance v0, Lio/dronefleet/mavlink/common/RawRpm;

    iget v1, p0, Lio/dronefleet/mavlink/common/RawRpm$Builder;->index:I

    iget v2, p0, Lio/dronefleet/mavlink/common/RawRpm$Builder;->frequency:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/common/RawRpm;-><init>(IFLio/dronefleet/mavlink/common/RawRpm$1;)V

    return-object v0
.end method

.method public final frequency(F)Lio/dronefleet/mavlink/common/RawRpm$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Indicated rate"
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 134
    iput p1, p0, Lio/dronefleet/mavlink/common/RawRpm$Builder;->frequency:F

    return-object p0
.end method

.method public final index(I)Lio/dronefleet/mavlink/common/RawRpm$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Index of this RPM sensor (0-indexed)"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 121
    iput p1, p0, Lio/dronefleet/mavlink/common/RawRpm$Builder;->index:I

    return-object p0
.end method
