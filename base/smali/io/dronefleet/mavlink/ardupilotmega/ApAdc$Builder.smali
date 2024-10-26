.class public final Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;
.super Ljava/lang/Object;
.source "ApAdc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/ApAdc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adc1:I

.field private adc2:I

.field private adc3:I

.field private adc4:I

.field private adc5:I

.field private adc6:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adc1(I)Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADC output 1."
        position = 0x1
        unitSize = 0x2
    .end annotation

    .line 202
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc1:I

    return-object p0
.end method

.method public final adc2(I)Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADC output 2."
        position = 0x2
        unitSize = 0x2
    .end annotation

    .line 215
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc2:I

    return-object p0
.end method

.method public final adc3(I)Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADC output 3."
        position = 0x3
        unitSize = 0x2
    .end annotation

    .line 228
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc3:I

    return-object p0
.end method

.method public final adc4(I)Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADC output 4."
        position = 0x4
        unitSize = 0x2
    .end annotation

    .line 241
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc4:I

    return-object p0
.end method

.method public final adc5(I)Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADC output 5."
        position = 0x5
        unitSize = 0x2
    .end annotation

    .line 254
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc5:I

    return-object p0
.end method

.method public final adc6(I)Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "ADC output 6."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 267
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc6:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/ApAdc;
    .locals 9

    .line 272
    new-instance v8, Lio/dronefleet/mavlink/ardupilotmega/ApAdc;

    iget v1, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc1:I

    iget v2, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc2:I

    iget v3, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc3:I

    iget v4, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc4:I

    iget v5, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc5:I

    iget v6, p0, Lio/dronefleet/mavlink/ardupilotmega/ApAdc$Builder;->adc6:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/dronefleet/mavlink/ardupilotmega/ApAdc;-><init>(IIIIIILio/dronefleet/mavlink/ardupilotmega/ApAdc$1;)V

    return-object v8
.end method
