.class public Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;
.super Landroidx/fragment/app/Fragment;
.source "DroneShareSettings.java"


# static fields
.field private static final T:Ljava/lang/String; = "DroneShareSettings"


# instance fields
.field btn_connect:Landroid/widget/Button;

.field btn_disconnect:Landroid/widget/Button;

.field chk_agree:Landroid/widget/CheckBox;

.field chk_agree2:Landroid/widget/CheckBox;

.field ds_account_id:Landroid/widget/EditText;

.field ds_account_token:Landroid/widget/EditText;

.field settingsLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->settingsLoaded:Z

    return-void
.end method

.method private loadSettings()V
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->ds_account_id:Landroid/widget/EditText;

    invoke-static {}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->getAccountID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->ds_account_token:Landroid/widget/EditText;

    invoke-static {}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->settingsLoaded:Z

    return-void
.end method

.method public static newInstance()Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;
    .locals 2

    .line 35
    new-instance v0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-virtual {v0, v1}, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateViewStatus()V
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->btn_connect:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->btn_disconnect:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->chk_agree:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->chk_agree2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->btn_connect:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->btn_disconnect:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$DroneShareSettings(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->actionConnect(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$DroneShareSettings(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;->actionDisconnect(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$2$DroneShareSettings(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->updateViewStatus()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0032

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const p2, 0x7f09004d

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->btn_connect:Landroid/widget/Button;

    .line 56
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->btn_connect:Landroid/widget/Button;

    new-instance p3, Lorg/cubepilot/herelinksettings/droneshare/-$$Lambda$DroneShareSettings$Ktz2q8UBmRkJkNMBz44KpzXD534;

    invoke-direct {p3, p0}, Lorg/cubepilot/herelinksettings/droneshare/-$$Lambda$DroneShareSettings$Ktz2q8UBmRkJkNMBz44KpzXD534;-><init>(Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09004e

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->btn_disconnect:Landroid/widget/Button;

    .line 58
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->btn_disconnect:Landroid/widget/Button;

    new-instance p3, Lorg/cubepilot/herelinksettings/droneshare/-$$Lambda$DroneShareSettings$AMfDFXUwAsDv4T5d49lJtXPKcZc;

    invoke-direct {p3, p0}, Lorg/cubepilot/herelinksettings/droneshare/-$$Lambda$DroneShareSettings$AMfDFXUwAsDv4T5d49lJtXPKcZc;-><init>(Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900ae

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->ds_account_id:Landroid/widget/EditText;

    const p2, 0x7f0900af

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->ds_account_token:Landroid/widget/EditText;

    .line 63
    new-instance p2, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings$1;

    invoke-direct {p2, p0}, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings$1;-><init>(Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;)V

    .line 77
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->ds_account_id:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->ds_account_token:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    new-instance p2, Lorg/cubepilot/herelinksettings/droneshare/-$$Lambda$DroneShareSettings$moCIeg3xx8YNQknnl1bULrkGZmk;

    invoke-direct {p2, p0}, Lorg/cubepilot/herelinksettings/droneshare/-$$Lambda$DroneShareSettings$moCIeg3xx8YNQknnl1bULrkGZmk;-><init>(Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;)V

    const p3, 0x7f09007d

    .line 81
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->chk_agree:Landroid/widget/CheckBox;

    const p3, 0x7f09007e

    .line 82
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->chk_agree2:Landroid/widget/CheckBox;

    .line 83
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->chk_agree:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object p3, p0, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->chk_agree2:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 118
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 106
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 107
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->loadSettings()V

    .line 108
    invoke-direct {p0}, Lorg/cubepilot/herelinksettings/droneshare/DroneShareSettings;->updateViewStatus()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 113
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
