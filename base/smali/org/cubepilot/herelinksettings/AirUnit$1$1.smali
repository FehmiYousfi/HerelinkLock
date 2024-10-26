.class Lorg/cubepilot/herelinksettings/AirUnit$1$1;
.super Ljava/lang/Object;
.source "AirUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/AirUnit$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cubepilot/herelinksettings/AirUnit$1;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/AirUnit$1;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/AirUnit$1$1;->this$1:Lorg/cubepilot/herelinksettings/AirUnit$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 414
    :try_start_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/AirUnit$1$1;->this$1:Lorg/cubepilot/herelinksettings/AirUnit$1;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/AirUnit$1;->this$0:Lorg/cubepilot/herelinksettings/AirUnit;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/AirUnit;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Online Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/cubepilot/herelinksettings/AirUnit;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
