.class Lorg/cubepilot/herelinksettings/JoystickSettings$8;
.super Ljava/lang/Object;
.source "JoystickSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/JoystickSettings;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/JoystickSettings;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$8;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 p1, 0x4

    const v0, 0x7f090086

    if-eqz p2, :cond_0

    .line 553
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$8;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermain:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$8;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 555
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$8;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/JoystickSettings;->dualcontrollermain:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$8;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-nez p2, :cond_2

    .line 558
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$8;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {p2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
