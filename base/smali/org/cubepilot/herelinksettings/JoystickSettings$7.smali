.class Lorg/cubepilot/herelinksettings/JoystickSettings$7;
.super Ljava/lang/Object;
.source "JoystickSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 439
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$7;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 442
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.cit"

    const-string v2, "com.miui.cit.CitRollWheelCheckActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 444
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$7;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {v0, p1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
