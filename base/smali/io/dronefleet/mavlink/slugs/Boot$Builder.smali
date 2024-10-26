.class public final Lio/dronefleet/mavlink/slugs/Boot$Builder;
.super Ljava/lang/Object;
.source "Boot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/slugs/Boot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/slugs/Boot;
    .locals 4

    .line 101
    new-instance v0, Lio/dronefleet/mavlink/slugs/Boot;

    iget-wide v1, p0, Lio/dronefleet/mavlink/slugs/Boot$Builder;->version:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/slugs/Boot;-><init>(JLio/dronefleet/mavlink/slugs/Boot$1;)V

    return-object v0
.end method

.method public final version(J)Lio/dronefleet/mavlink/slugs/Boot$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "The onboard software version"
        position = 0x1
        unitSize = 0x4
    .end annotation

    .line 96
    iput-wide p1, p0, Lio/dronefleet/mavlink/slugs/Boot$Builder;->version:J

    return-object p0
.end method
