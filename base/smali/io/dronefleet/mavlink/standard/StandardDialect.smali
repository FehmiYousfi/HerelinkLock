.class public final Lio/dronefleet/mavlink/standard/StandardDialect;
.super Lio/dronefleet/mavlink/AbstractMavlinkDialect;
.source "StandardDialect.java"


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

    sput-object v0, Lio/dronefleet/mavlink/standard/StandardDialect;->dependencies:Ljava/util/List;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/dronefleet/mavlink/standard/StandardDialect;->messages:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    sget-object v0, Lio/dronefleet/mavlink/standard/StandardDialect;->dependencies:Ljava/util/List;

    sget-object v1, Lio/dronefleet/mavlink/standard/StandardDialect;->messages:Ljava/util/Map;

    const-string v2, "standard"

    invoke-direct {p0, v2, v0, v1}, Lio/dronefleet/mavlink/AbstractMavlinkDialect;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method