.class public final synthetic Lio/dronefleet/mavlink/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;

    invoke-direct {v0}, Lio/dronefleet/mavlink/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;->INSTANCE:Lio/dronefleet/mavlink/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;

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

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method