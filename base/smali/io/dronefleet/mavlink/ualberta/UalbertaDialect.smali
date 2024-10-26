.class public final Lio/dronefleet/mavlink/ualberta/UalbertaDialect;
.super Lio/dronefleet/mavlink/AbstractMavlinkDialect;
.source "UalbertaDialect.java"


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

    sput-object v0, Lio/dronefleet/mavlink/ualberta/UalbertaDialect;->dependencies:Ljava/util/List;

    .line 23
    new-instance v0, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;-><init>()V

    const/16 v1, 0xdc

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/ualberta/NavFilterBias;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xdd

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/ualberta/RadioCalibration;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    const/16 v1, 0xde

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lio/dronefleet/mavlink/ualberta/UalbertaSysStatus;

    invoke-virtual {v0, v1, v2}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lio/dronefleet/mavlink/util/UnmodifiableMapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/ualberta/UalbertaDialect;->messages:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    sget-object v0, Lio/dronefleet/mavlink/ualberta/UalbertaDialect;->dependencies:Ljava/util/List;

    sget-object v1, Lio/dronefleet/mavlink/ualberta/UalbertaDialect;->messages:Ljava/util/Map;

    const-string v2, "ualberta"

    invoke-direct {p0, v2, v0, v1}, Lio/dronefleet/mavlink/AbstractMavlinkDialect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
