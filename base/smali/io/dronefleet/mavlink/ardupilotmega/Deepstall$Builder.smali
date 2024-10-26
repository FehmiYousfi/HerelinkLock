.class public final Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
.super Ljava/lang/Object;
.source "Deepstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Deepstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private altitude:F

.field private arcEntryLat:I

.field private arcEntryLon:I

.field private crossTrackError:F

.field private expectedTravelDistance:F

.field private landingLat:I

.field private landingLon:I

.field private pathLat:I

.field private pathLon:I

.field private stage:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/DeepstallStage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final altitude(F)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Altitude."
        position = 0x7
        unitSize = 0x4
    .end annotation

    .line 392
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->altitude:F

    return-object p0
.end method

.method public final arcEntryLat(I)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Arc entry point, latitude."
        position = 0x5
        signed = true
        unitSize = 0x4
    .end annotation

    .line 365
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->arcEntryLat:I

    return-object p0
.end method

.method public final arcEntryLon(I)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Arc entry point, longitude."
        position = 0x6
        signed = true
        unitSize = 0x4
    .end annotation

    .line 379
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->arcEntryLon:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Deepstall;
    .locals 13

    .line 460
    new-instance v12, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->landingLat:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->landingLon:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->pathLat:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->pathLon:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->arcEntryLat:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->arcEntryLon:I

    iget v7, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->altitude:F

    iget v8, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->expectedTravelDistance:F

    iget v9, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->crossTrackError:F

    iget-object v10, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->stage:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/dronefleet/mavlink/ardupilotmega/Deepstall;-><init>(IIIIIIFFFLio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/Deepstall$1;)V

    return-object v12
.end method

.method public final crossTrackError(F)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Deepstall cross track error (only\n                valid when in DEEPSTALL_STAGE_LAND)."
        position = 0x9
        unitSize = 0x4
    .end annotation

    .line 420
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->crossTrackError:F

    return-object p0
.end method

.method public final expectedTravelDistance(F)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Distance the aircraft\n                expects to travel during the deepstall."
        position = 0x8
        unitSize = 0x4
    .end annotation

    .line 406
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->expectedTravelDistance:F

    return-object p0
.end method

.method public final landingLat(I)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Landing latitude."
        position = 0x1
        signed = true
        unitSize = 0x4
    .end annotation

    .line 307
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->landingLat:I

    return-object p0
.end method

.method public final landingLon(I)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Landing longitude."
        position = 0x2
        signed = true
        unitSize = 0x4
    .end annotation

    .line 321
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->landingLon:I

    return-object p0
.end method

.method public final pathLat(I)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Final heading start point,\n                latitude."
        position = 0x3
        signed = true
        unitSize = 0x4
    .end annotation

    .line 336
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->pathLat:I

    return-object p0
.end method

.method public final pathLon(I)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Final heading start point,\n                longitude."
        position = 0x4
        signed = true
        unitSize = 0x4
    .end annotation

    .line 351
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->pathLon:I

    return-object p0
.end method

.method public final stage(Lio/dronefleet/mavlink/ardupilotmega/DeepstallStage;)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0

    .line 442
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->stage(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final stage(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/DeepstallStage;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Deepstall stage."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/DeepstallStage;
        position = 0xa
        unitSize = 0x1
    .end annotation

    .line 434
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->stage:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final stage(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;"
        }
    .end annotation

    .line 456
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->stage(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs stage([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;
    .locals 0

    .line 449
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;->stage(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/Deepstall$Builder;

    move-result-object p1

    return-object p1
.end method
