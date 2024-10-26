.class public Lio/dronefleet/mavlink/util/WireFieldInfoComparator;
.super Ljava/lang/Object;
.source "WireFieldInfoComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)I
    .locals 2

    .line 10
    invoke-interface {p1}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->extension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->extension()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 13
    :cond_0
    invoke-interface {p1}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->extension()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->extension()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 17
    :cond_1
    invoke-interface {p1}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->extension()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->unitSize()I

    move-result v0

    invoke-interface {p2}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->unitSize()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 18
    invoke-interface {p2}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->unitSize()I

    move-result p2

    invoke-interface {p1}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->unitSize()I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    .line 21
    :cond_2
    invoke-interface {p1}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->position()I

    move-result p1

    invoke-interface {p2}, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;->position()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    check-cast p2, Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;

    invoke-virtual {p0, p1, p2}, Lio/dronefleet/mavlink/util/WireFieldInfoComparator;->compare(Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;)I

    move-result p1

    return p1
.end method
