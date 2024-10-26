.class public final Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;
.super Ljava/lang/Object;
.source "Hwstatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private i2cerr:I

.field private vcc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;
    .locals 4

    .line 132
    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;->vcc:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;->i2cerr:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus;-><init>(IILio/dronefleet/mavlink/ardupilotmega/Hwstatus$1;)V

    return-object v0
.end method

.method public final i2cerr(I)Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "I2C error count."
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 127
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;->i2cerr:I

    return-object p0
.end method

.method public final vcc(I)Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Board voltage."
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 114
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/Hwstatus$Builder;->vcc:I

    return-object p0
.end method
