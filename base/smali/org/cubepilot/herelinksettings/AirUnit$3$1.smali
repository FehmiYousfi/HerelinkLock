.class Lorg/cubepilot/herelinksettings/AirUnit$3$1;
.super Ljava/lang/Object;
.source "AirUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/AirUnit$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/AirUnit$3;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/AirUnit$3;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$3$1;->this$0:Lorg/cubepilot/herelinksettings/AirUnit$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/AirUnit$3$1;->this$0:Lorg/cubepilot/herelinksettings/AirUnit$3;

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/AirUnit$3;->val$_context:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Detected Herelink 1.0 modem FW, and the incorrect firmware is loaded, please update the airunit FW"

    .line 1157
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Modem FW Version"

    .line 1159
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1160
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1162
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
