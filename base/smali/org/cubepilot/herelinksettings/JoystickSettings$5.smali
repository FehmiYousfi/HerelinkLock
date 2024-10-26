.class Lorg/cubepilot/herelinksettings/JoystickSettings$5;
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

    .line 416
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$5;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 419
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$5;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->access$100(Lorg/cubepilot/herelinksettings/JoystickSettings;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f10005b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 420
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$5;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->access$100(Lorg/cubepilot/herelinksettings/JoystickSettings;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$5;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 421
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$5;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->access$200(Lorg/cubepilot/herelinksettings/JoystickSettings;)Lorg/cubepilot/herelinksettings/JoystickCalibrator;

    move-result-object p1

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$5;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-virtual {v0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$5;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    .line 422
    invoke-virtual {v1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$5;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    .line 423
    invoke-virtual {v2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090223

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 421
    invoke-virtual {p1, v0, v1, v2}, Lorg/cubepilot/herelinksettings/JoystickCalibrator;->beginJSCal(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method
