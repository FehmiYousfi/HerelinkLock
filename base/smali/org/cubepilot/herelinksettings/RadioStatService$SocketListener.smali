.class Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;
.super Ljava/lang/Object;
.source "RadioStatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/RadioStatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/RadioStatService;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/RadioStatService;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 601
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "RadioStatServiceListener"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 603
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    iget v1, v0, Lorg/cubepilot/herelinksettings/RadioStatService;->localServer:I

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    iget-object v2, v2, Lorg/cubepilot/herelinksettings/RadioStatService;->msg:[B

    invoke-virtual {v0, v1, v2}, Lorg/cubepilot/herelinksettings/RadioStatService;->readSocket(I[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/RadioStatService;->msg:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/RadioStatService;->msg:[B

    array-length v0, v0

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    iget-object v2, v2, Lorg/cubepilot/herelinksettings/RadioStatService;->msg:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    add-int/2addr v2, v1

    if-lt v0, v2, :cond_0

    .line 604
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    iget-object v2, v2, Lorg/cubepilot/herelinksettings/RadioStatService;->msg:[B

    iget-object v4, p0, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    iget-object v4, v4, Lorg/cubepilot/herelinksettings/RadioStatService;->msg:[B

    aget-byte v3, v4, v3

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "UL_BW"

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UL_RATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 608
    :cond_1
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-static {v1, v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->access$100(Lorg/cubepilot/herelinksettings/RadioStatService;Ljava/lang/String;)V

    .line 610
    new-instance v1, Landroid/content/Intent;

    const-string v2, "RadioStatService.ServiceLocalEvent"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    .line 611
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioStatService$SocketListener;->this$0:Lorg/cubepilot/herelinksettings/RadioStatService;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/RadioStatService;->access$200(Lorg/cubepilot/herelinksettings/RadioStatService;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method
