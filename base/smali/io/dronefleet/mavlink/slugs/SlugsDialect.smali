.class public final Lio/dronefleet/mavlink/slugs/SlugsDialect;
.super Lio/dronefleet/mavlink/AbstractMavlinkDialect;
.source "SlugsDialect.java"


# static fields
.field private static final dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ">;"
        }
    .end annotation
.end field

.field private static final messages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lio/dronefleet/mavlink/MavlinkDialect;

    .line 17
    new-instance v1, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {v1}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsDialect;->dependencies:Ljava/util/List;

    .line 23
    new-instance v0, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;-><init>()V

    const/16 v1, 0xaa

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/CpuLoad;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xac

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/SensorBias;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xad

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/Diagnostic;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb0

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/SlugsNavigation;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/DataLog;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb3

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/GpsDateTime;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb4

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/MidLvlCmds;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb5

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/CtrlSrfcPt;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb8

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/SlugsCameraOrder;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xb9

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/ControlSurface;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xba

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/SlugsMobileLocation;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xbc

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/SlugsConfigurationCamera;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xbd

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/IsrLocation;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xbf

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/VoltSensor;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xc0

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/PtzStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xc1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/UavStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xc2

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/StatusGps;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xc3

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/NovatelDiag;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xc4

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/SensorDiag;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xc5

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/slugs/Boot;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/slugs/SlugsDialect;->messages:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    sget-object v0, Lio/dronefleet/mavlink/slugs/SlugsDialect;->dependencies:Ljava/util/List;

    sget-object v1, Lio/dronefleet/mavlink/slugs/SlugsDialect;->messages:Ljava/util/Map;

    const-string v2, "slugs"

    invoke-direct {p0, v2, v0, v1}, Lio/dronefleet/mavlink/AbstractMavlinkDialect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
