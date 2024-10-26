.class Lorg/cubepilot/herelinksettings/JoystickSettings$9;
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

    .line 562
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$9;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    const p1, 0x7f090086

    if-eqz p2, :cond_0

    .line 565
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$9;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {p2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 567
    :cond_0
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$9;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {p2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
