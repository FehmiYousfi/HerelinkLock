.class Lorg/cubepilot/herelinksettings/util/Updater$1;
.super Ljava/lang/Object;
.source "Updater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/util/Updater;->getPackages(Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/util/Updater;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/util/Updater;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$1;->this$0:Lorg/cubepilot/herelinksettings/util/Updater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$1;->this$0:Lorg/cubepilot/herelinksettings/util/Updater;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/util/Updater;->DownloadOnSDcard()V

    .line 180
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$1;->this$0:Lorg/cubepilot/herelinksettings/util/Updater;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/util/Updater;->InstallApplication()V

    .line 181
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/util/Updater$1;->this$0:Lorg/cubepilot/herelinksettings/util/Updater;

    iget-object p2, p1, Lorg/cubepilot/herelinksettings/util/Updater;->PackageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/cubepilot/herelinksettings/util/Updater;->UnInstallApplication(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
