.class public final synthetic Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$vK_KALSgOr--rvAgiu3gQHYYygA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$vK_KALSgOr--rvAgiu3gQHYYygA;->f$0:I

    iput-object p2, p0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$vK_KALSgOr--rvAgiu3gQHYYygA;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$vK_KALSgOr--rvAgiu3gQHYYygA;->f$0:I

    iget-object v1, p0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$vK_KALSgOr--rvAgiu3gQHYYygA;->f$1:Ljava/lang/Class;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lio/dronefleet/mavlink/util/EnumValue;->lambda$create$2(ILjava/lang/Class;Ljava/lang/Integer;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    return-object p1
.end method
