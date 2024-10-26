.class Lorg/cubepilot/herelinksettings/JoystickSettings$6;
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

    .line 426
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$6;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$JoystickSettings$6(Landroid/widget/ImageView;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    const/16 p3, 0x8

    .line 433
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    new-instance p1, Landroid/content/ComponentName;

    const-string p3, "com.miui.cit"

    const-string v0, "com.miui.cit.CitJoystickCheckActivity"

    invoke-direct {p1, p3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 435
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$6;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {p1, p2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 429
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$6;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 431
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    new-instance v1, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$6$-kkFwhveHYghJd7SmS-8yqTOzPQ;

    invoke-direct {v1, p0, v0, p1}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$6$-kkFwhveHYghJd7SmS-8yqTOzPQ;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings$6;Landroid/widget/ImageView;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
