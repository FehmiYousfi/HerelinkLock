.class Lorg/cubepilot/herelinksettings/RadioSettings$1$1;
.super Ljava/lang/Object;
.source "RadioSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/RadioSettings$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cubepilot/herelinksettings/RadioSettings$1;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/RadioSettings$1;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/RadioSettings$1$1;->this$1:Lorg/cubepilot/herelinksettings/RadioSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/RadioSettings$1$1;->this$1:Lorg/cubepilot/herelinksettings/RadioSettings$1;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/RadioSettings$1;->this$0:Lorg/cubepilot/herelinksettings/RadioSettings;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/RadioSettings;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
