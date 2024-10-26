.class public final synthetic Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$Iou3iVqG48OEz_YvR1s7U-p85io;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field private final synthetic f$0:Lio/dronefleet/mavlink/util/EnumValue;


# direct methods
.method public synthetic constructor <init>(Lio/dronefleet/mavlink/util/EnumValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$Iou3iVqG48OEz_YvR1s7U-p85io;->f$0:Lio/dronefleet/mavlink/util/EnumValue;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$Iou3iVqG48OEz_YvR1s7U-p85io;->f$0:Lio/dronefleet/mavlink/util/EnumValue;

    invoke-virtual {v0, p1}, Lio/dronefleet/mavlink/util/EnumValue;->lambda$flagsEnabled$3$EnumValue(I)Z

    move-result p1

    return p1
.end method
