.class public Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;
.super Ljava/lang/Object;
.source "ButtonSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/ButtonSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemModel"
.end annotation


# instance fields
.field public final active_val:Landroidx/databinding/ObservableInt;

.field public final channel:Landroidx/databinding/ObservableInt;

.field public final channel_min:Landroidx/databinding/ObservableInt;

.field public default_button:Landroidx/databinding/ObservableBoolean;

.field public final default_val:Landroidx/databinding/ObservableInt;

.field public default_val_visible:Landroidx/databinding/ObservableBoolean;

.field public item:Ljava/lang/String;

.field public momentary:Landroidx/databinding/ObservableBoolean;

.field public final sbus:Landroidx/databinding/ObservableInt;

.field final synthetic this$0:Lorg/cubepilot/herelinksettings/ButtonSettings;

.field public toggle:Landroidx/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>(Lorg/cubepilot/herelinksettings/ButtonSettings;Ljava/lang/String;)V
    .locals 1

    .line 546
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->this$0:Lorg/cubepilot/herelinksettings/ButtonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    new-instance p1, Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    .line 526
    new-instance p1, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    .line 527
    new-instance p1, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val_visible:Landroidx/databinding/ObservableBoolean;

    .line 528
    new-instance p1, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_button:Landroidx/databinding/ObservableBoolean;

    .line 530
    new-instance p1, Landroidx/databinding/ObservableInt;

    const/16 v0, 0x3e8

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val:Landroidx/databinding/ObservableInt;

    .line 531
    new-instance p1, Landroidx/databinding/ObservableInt;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->active_val:Landroidx/databinding/ObservableInt;

    .line 532
    new-instance p1, Landroidx/databinding/ObservableInt;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->channel:Landroidx/databinding/ObservableInt;

    .line 533
    new-instance p1, Landroidx/databinding/ObservableInt;

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->channel_min:Landroidx/databinding/ObservableInt;

    .line 534
    new-instance p1, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel$1;-><init>(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;I)V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->sbus:Landroidx/databinding/ObservableInt;

    .line 547
    iput-object p2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->item:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 576
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 578
    :cond_1
    check-cast p1, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    .line 580
    iget-object v2, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->item:Ljava/lang/String;

    iget-object p1, p1, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->item:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 588
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->item:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toggleMomentary(Landroid/view/View;)V
    .locals 2

    .line 551
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 552
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 554
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val_visible:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 556
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 557
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val_visible:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public toggleToggle(Landroid/view/View;)V
    .locals 2

    .line 563
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 564
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 566
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val_visible:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 568
    :cond_0
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 569
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val_visible:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    :cond_1
    return-void
.end method
