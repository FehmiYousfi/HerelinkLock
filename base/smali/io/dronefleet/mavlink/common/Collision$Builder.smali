.class public final Lio/dronefleet/mavlink/common/Collision$Builder;
.super Ljava/lang/Object;
.source "Collision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/common/Collision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private action:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionAction;",
            ">;"
        }
    .end annotation
.end field

.field private altitudeMinimumDelta:F

.field private horizontalMinimumDelta:F

.field private id:J

.field private src:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionSrc;",
            ">;"
        }
    .end annotation
.end field

.field private threatLevel:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionThreatLevel;",
            ">;"
        }
    .end annotation
.end field

.field private timeToMinimumDelta:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final action(Lio/dronefleet/mavlink/common/MavCollisionAction;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0

    .line 295
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Collision$Builder;->action(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final action(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionAction;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Collision$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Action that is being\n                taken to avoid this collision"
        enumType = Lio/dronefleet/mavlink/common/MavCollisionAction;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 287
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->action:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final action(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Collision$Builder;"
        }
    .end annotation

    .line 309
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Collision$Builder;->action(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs action([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0

    .line 302
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Collision$Builder;->action(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final altitudeMinimumDelta(F)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Closest vertical distance\n                between vehicle and object"
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 372
    iput p1, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->altitudeMinimumDelta:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/common/Collision;
    .locals 11

    .line 391
    new-instance v10, Lio/dronefleet/mavlink/common/Collision;

    iget-object v1, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->src:Lio/dronefleet/mavlink/util/EnumValue;

    iget-wide v2, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->id:J

    iget-object v4, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->action:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v5, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->threatLevel:Lio/dronefleet/mavlink/util/EnumValue;

    iget v6, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->timeToMinimumDelta:F

    iget v7, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->altitudeMinimumDelta:F

    iget v8, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->horizontalMinimumDelta:F

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/dronefleet/mavlink/common/Collision;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;FFFLio/dronefleet/mavlink/common/Collision$1;)V

    return-object v10
.end method

.method public final horizontalMinimumDelta(F)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Closest horizontal\n                distance between vehicle and object"
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 386
    iput p1, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->horizontalMinimumDelta:F

    return-object p0
.end method

.method public final id(J)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Unique identifier, domain based on src field"
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 272
    iput-wide p1, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->id:J

    return-object p0
.end method

.method public final src(Lio/dronefleet/mavlink/common/MavCollisionSrc;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0

    .line 246
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Collision$Builder;->src(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final src(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionSrc;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Collision$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Collision data source"
        enumType = Lio/dronefleet/mavlink/common/MavCollisionSrc;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 238
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->src:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final src(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Collision$Builder;"
        }
    .end annotation

    .line 260
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Collision$Builder;->src(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs src([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0

    .line 253
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Collision$Builder;->src(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final threatLevel(Lio/dronefleet/mavlink/common/MavCollisionThreatLevel;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0

    .line 331
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Collision$Builder;->threatLevel(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final threatLevel(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/common/MavCollisionThreatLevel;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Collision$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "How\n                concerned the aircraft is about this collision"
        enumType = Lio/dronefleet/mavlink/common/MavCollisionThreatLevel;
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 323
    iput-object p1, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->threatLevel:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final threatLevel(Ljava/util/Collection;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/common/Collision$Builder;"
        }
    .end annotation

    .line 345
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Collision$Builder;->threatLevel(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs threatLevel([Ljava/lang/Enum;)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0

    .line 338
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/common/Collision$Builder;->threatLevel(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/common/Collision$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final timeToMinimumDelta(F)Lio/dronefleet/mavlink/common/Collision$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Estimated time until\n                collision occurs"
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 358
    iput p1, p0, Lio/dronefleet/mavlink/common/Collision$Builder;->timeToMinimumDelta:F

    return-object p0
.end method
