.class Lorg/cubepilot/herelinksettings/JoystickSettings$10;
.super Ljava/lang/Object;
.source "JoystickSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 708
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$10;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTouch$0$JoystickSettings$10(Ljava/lang/String;)V
    .locals 3

    .line 712
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$10;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->access$300(Lorg/cubepilot/herelinksettings/JoystickSettings;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 714
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$10;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-static {v2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->access$300(Lorg/cubepilot/herelinksettings/JoystickSettings;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 715
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    :cond_1
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$10;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-static {v0}, Lorg/cubepilot/herelinksettings/JoystickSettings;->access$300(Lorg/cubepilot/herelinksettings/JoystickSettings;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 711
    sget-object p1, Lorg/cubepilot/herelinksettings/RadioStatService;->HerelinkNetwork:Ljava/util/LinkedList;

    new-instance p2, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$10$x96N_q6L47ovnVZkSOHmFWbVWV8;

    invoke-direct {p2, p0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$10$x96N_q6L47ovnVZkSOHmFWbVWV8;-><init>(Lorg/cubepilot/herelinksettings/JoystickSettings$10;)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->forEach(Ljava/util/function/Consumer;)V

    .line 720
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/JoystickSettings$10;->this$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    invoke-static {p1}, Lorg/cubepilot/herelinksettings/JoystickSettings;->access$300(Lorg/cubepilot/herelinksettings/JoystickSettings;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    return p1
.end method
