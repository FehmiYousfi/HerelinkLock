.class Lorg/cubepilot/herelinksettings/JoystickSettings$1;
.super Ljava/lang/Object;
.source "JoystickSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cubepilot/herelinksettings/JoystickSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 132
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$1;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 135
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$1;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->access$000(Lorg/cubepilot/herelinksettings/JoystickSettings;)V

    const/4 p1, 0x0

    return p1
.end method
