.class public final synthetic Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$Z3j7QqPBKUU27U4Xo_EFNWpNdoI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$Z3j7QqPBKUU27U4Xo_EFNWpNdoI;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lio/dronefleet/mavlink/util/reflection/-$$Lambda$MavlinkReflection$Z3j7QqPBKUU27U4Xo_EFNWpNdoI;->f$0:I

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->lambda$getEntryByValue$5(ILjava/lang/reflect/Field;)Z

    move-result p1

    return p1
.end method
