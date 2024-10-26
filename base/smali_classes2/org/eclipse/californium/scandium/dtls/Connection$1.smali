.class Lorg/eclipse/californium/scandium/dtls/Connection$1;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lorg/eclipse/californium/elements/util/SerialExecutor$ExecutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/Connection;->setConnectorContext(Ljava/util/concurrent/Executor;Lorg/eclipse/californium/scandium/ConnectionListener;)Lorg/eclipse/californium/scandium/dtls/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/Connection;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Connection$1;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterExecution()V
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$1;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$100(Lorg/eclipse/californium/scandium/dtls/Connection;)Lorg/eclipse/californium/scandium/ConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Connection$1;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-interface {v0, v1}, Lorg/eclipse/californium/scandium/ConnectionListener;->afterExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method

.method public beforeExecution()V
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/Connection$1;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/dtls/Connection;->access$100(Lorg/eclipse/californium/scandium/dtls/Connection;)Lorg/eclipse/californium/scandium/ConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/Connection$1;->this$0:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-interface {v0, v1}, Lorg/eclipse/californium/scandium/ConnectionListener;->beforeExecution(Lorg/eclipse/californium/scandium/dtls/Connection;)V

    return-void
.end method
