.class Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings$1;
.super Ljava/lang/Object;
.source "DroneShareSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings$1;->this$0:Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings$1;->this$0:Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;

    iget-boolean p1, p1, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->settingsLoaded:Z

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings$1;->this$0:Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->ds_account_id:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings$1;->this$0:Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->ds_account_token:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->updateSettings(Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
