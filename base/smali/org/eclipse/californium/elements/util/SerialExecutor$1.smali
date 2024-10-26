.class Lorg/eclipse/californium/elements/util/SerialExecutor$1;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/elements/util/SerialExecutor;->scheduleNextJob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/elements/util/SerialExecutor;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/elements/util/SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor$1;->this$0:Lorg/eclipse/californium/elements/util/SerialExecutor;

    iput-object p2, p0, Lorg/eclipse/californium/elements/util/SerialExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 284
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor$1;->this$0:Lorg/eclipse/californium/elements/util/SerialExecutor;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$000(Lorg/eclipse/californium/elements/util/SerialExecutor;)V

    .line 285
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor$1;->this$0:Lorg/eclipse/californium/elements/util/SerialExecutor;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$100(Lorg/eclipse/californium/elements/util/SerialExecutor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-string v1, "unexpected error occurred:"

    if-eqz v0, :cond_0

    .line 288
    :try_start_1
    invoke-interface {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;->beforeExecution()V

    .line 290
    :cond_0
    iget-object v2, p0, Lorg/eclipse/californium/elements/util/SerialExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 296
    :try_start_2
    invoke-interface {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;->afterExecution()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 299
    :try_start_3
    invoke-static {}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$200()Lorg/slf4j/Logger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor$1;->this$0:Lorg/eclipse/californium/elements/util/SerialExecutor;

    :goto_1
    invoke-static {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$300(Lorg/eclipse/californium/elements/util/SerialExecutor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_3

    :catchall_1
    move-exception v2

    .line 292
    :try_start_4
    invoke-static {}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$200()Lorg/slf4j/Logger;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_2

    .line 296
    :try_start_5
    invoke-interface {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;->afterExecution()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 299
    :try_start_6
    invoke-static {}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$200()Lorg/slf4j/Logger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor$1;->this$0:Lorg/eclipse/californium/elements/util/SerialExecutor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_1

    .line 304
    :goto_3
    :try_start_7
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor$1;->this$0:Lorg/eclipse/californium/elements/util/SerialExecutor;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$400(Lorg/eclipse/californium/elements/util/SerialExecutor;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    :catchall_3
    move-exception v2

    if-eqz v0, :cond_3

    .line 296
    :try_start_8
    invoke-interface {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;->afterExecution()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    .line 299
    :try_start_9
    invoke-static {}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$200()Lorg/slf4j/Logger;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    :cond_3
    :goto_4
    iget-object v0, p0, Lorg/eclipse/californium/elements/util/SerialExecutor$1;->this$0:Lorg/eclipse/californium/elements/util/SerialExecutor;

    invoke-static {v0}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$300(Lorg/eclipse/californium/elements/util/SerialExecutor;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    .line 304
    :try_start_a
    iget-object v1, p0, Lorg/eclipse/californium/elements/util/SerialExecutor$1;->this$0:Lorg/eclipse/californium/elements/util/SerialExecutor;

    invoke-static {v1}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$400(Lorg/eclipse/californium/elements/util/SerialExecutor;)V

    throw v0
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 307
    invoke-static {}, Lorg/eclipse/californium/elements/util/SerialExecutor;->access$200()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "shutdown?"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method
