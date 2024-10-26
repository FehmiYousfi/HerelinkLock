.class Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel$1;
.super Landroidx/databinding/ObservableInt;
.source "ButtonSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;I)V
    .locals 0

    .line 534
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel$1;->this$1:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    invoke-direct {p0, p2}, Landroidx/databinding/ObservableInt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public set(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 538
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel$1;->this$1:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->channel_min:Landroidx/databinding/ObservableInt;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    goto :goto_0

    .line 540
    :cond_0
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel$1;->this$1:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->channel_min:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1, v0}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 542
    :goto_0
    invoke-super {p0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method
