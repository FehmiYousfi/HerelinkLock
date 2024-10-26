.class Lorg/eclipse/californium/elements/util/CounterStatisticManager$1;
.super Ljava/lang/Object;
.source "CounterStatisticManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/elements/util/CounterStatisticManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/elements/util/CounterStatisticManager;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/elements/util/CounterStatisticManager;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager$1;->this$0:Lorg/eclipse/californium/elements/util/CounterStatisticManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager$1;->this$0:Lorg/eclipse/californium/elements/util/CounterStatisticManager;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->access$000(Lorg/eclipse/californium/elements/util/CounterStatisticManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/CounterStatisticManager$1;->this$0:Lorg/eclipse/californium/elements/util/CounterStatisticManager;

    invoke-virtual {v0}, Lorg/eclipse/californium/elements/util/CounterStatisticManager;->dump()V

    :cond_0
    return-void
.end method
