.class public final Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
.super Ljava/lang/Object;
.source "RallyPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/RallyPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private alt:I

.field private breakAlt:I

.field private count:I

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/RallyFlags;",
            ">;"
        }
    .end annotation
.end field

.field private idx:I

.field private landDir:I

.field private lat:I

.field private lng:I

.field private targetComponent:I

.field private targetSystem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final alt(I)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Transit / loiter altitude relative to home."
        position = 0x7
        signed = true
        unitSize = 0x2
    .end annotation

    .line 382
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->alt:I

    return-object p0
.end method

.method public final breakAlt(I)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Break altitude relative to home."
        position = 0x8
        signed = true
        unitSize = 0x2
    .end annotation

    .line 396
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->breakAlt:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/RallyPoint;
    .locals 13

    .line 450
    new-instance v12, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->targetSystem:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->targetComponent:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->idx:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->count:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->lat:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->lng:I

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->alt:I

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->breakAlt:I

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->landDir:I

    iget-object v10, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint;-><init>(IIIIIIIIILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$1;)V

    return-object v12
.end method

.method public final count(I)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Total number of points (for sanity checking)."
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 340
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->count:I

    return-object p0
.end method

.method public final flags(Lio/dronefleet/mavlink/ardupilotmega/RallyFlags;)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0

    .line 432
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/RallyFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Configuration\n                flags."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/RallyFlags;
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 424
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;"
        }
    .end annotation

    .line 446
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0

    .line 439
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final idx(I)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Point index (first point is 0)."
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 327
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->idx:I

    return-object p0
.end method

.method public final landDir(I)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Heading to aim for when landing."
        position = 0x9
        unitSize = 0x2
    .end annotation

    .line 409
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->landDir:I

    return-object p0
.end method

.method public final lat(I)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Latitude of point."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 354
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->lat:I

    return-object p0
.end method

.method public final lng(I)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Longitude of point."
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 368
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->lng:I

    return-object p0
.end method

.method public final targetComponent(I)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Component ID."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 314
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->targetComponent:I

    return-object p0
.end method

.method public final targetSystem(I)Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "System ID."
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 301
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/RallyPoint$Builder;->targetSystem:I

    return-object p0
.end method
