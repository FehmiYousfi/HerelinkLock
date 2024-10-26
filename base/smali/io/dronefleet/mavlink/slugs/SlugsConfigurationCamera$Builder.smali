.class public final Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$Builder;
.super Ljava/lang/Object;
.source "SlugsConfigurationCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private idorder:I

.field private order:I

.field private target:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera;
    .locals 5

    .line 169
    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera;

    iget v1, p0, Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$Builder;->target:I

    iget v2, p0, Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$Builder;->idorder:I

    iget v3, p0, Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$Builder;->order:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera;-><init>(IIILio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$1;)V

    return-object v0
.end method

.method public final idorder(I)Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ID 0: brightness 1: aperture 2: iris 3: ICR 4:\n                backlight"
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 151
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$Builder;->idorder:I

    return-object p0
.end method

.method public final order(I)Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "1: up/on 2: down/off 3: auto/reset/no action"
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 164
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$Builder;->order:I

    return-object p0
.end method

.method public final target(I)Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The system setting the commands"
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 137
    iput p1, p0, Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera$Builder;->target:I

    return-object p0
.end method
