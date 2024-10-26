.class public final synthetic Lio/dronefleet/mavlink/-$$Lambda$jtZxPhwT2tWuL3Bgur2-i5EIKhM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/-$$Lambda$jtZxPhwT2tWuL3Bgur2-i5EIKhM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/-$$Lambda$jtZxPhwT2tWuL3Bgur2-i5EIKhM;

    invoke-direct {v0}, Lio/dronefleet/mavlink/-$$Lambda$jtZxPhwT2tWuL3Bgur2-i5EIKhM;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/-$$Lambda$jtZxPhwT2tWuL3Bgur2-i5EIKhM;->INSTANCE:Lio/dronefleet/mavlink/-$$Lambda$jtZxPhwT2tWuL3Bgur2-i5EIKhM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/dronefleet/mavlink/MavlinkDialect;

    invoke-interface {p1}, Lio/dronefleet/mavlink/MavlinkDialect;->messageTypes()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
