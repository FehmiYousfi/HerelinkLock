.class public final Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
.super Ljava/lang/Object;
.source "EkfStatusReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private airspeedVariance:F

.field private compassVariance:F

.field private flags:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/EkfStatusFlags;",
            ">;"
        }
    .end annotation
.end field

.field private posHorizVariance:F

.field private posVertVariance:F

.field private terrainAltVariance:F

.field private velocityVariance:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final airspeedVariance(F)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Airspeed variance."
        extension = true
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 332
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->airspeedVariance:F

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport;
    .locals 10

    .line 337
    new-instance v9, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport;

    iget-object v1, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->velocityVariance:F

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->posHorizVariance:F

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->posVertVariance:F

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->compassVariance:F

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->terrainAltVariance:F

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->airspeedVariance:F

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport;-><init>(Lio/dronefleet/mavlink/util/EnumValue;FFFFFFLio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$1;)V

    return-object v9
.end method

.method public final compassVariance(F)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Compass variance."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 305
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->compassVariance:F

    return-object p0
.end method

.method public final flags(Lio/dronefleet/mavlink/ardupilotmega/EkfStatusFlags;)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
    .locals 0

    .line 240
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/EkfStatusFlags;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Flags."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/EkfStatusFlags;
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 232
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->flags:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final flags(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;"
        }
    .end annotation

    .line 254
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs flags([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
    .locals 0

    .line 247
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->flags(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final posHorizVariance(F)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Horizontal Position variance."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 279
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->posHorizVariance:F

    return-object p0
.end method

.method public final posVertVariance(F)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Vertical Position variance."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 292
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->posVertVariance:F

    return-object p0
.end method

.method public final terrainAltVariance(F)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Terrain Altitude variance."
        position = 0x6
        unitSize = 0x4
    .end annotation

    .line 318
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->terrainAltVariance:F

    return-object p0
.end method

.method public final velocityVariance(F)Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Velocity variance."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 266
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/EkfStatusReport$Builder;->velocityVariance:F

    return-object p0
.end method
