.class Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$5;
.super Ljava/lang/Object;
.source "ButtonItemBindingImpl.java"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;


# direct methods
.method constructor <init>(Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$5;->this$0:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 5

    .line 187
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$5;->this$0:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;

    iget-object v0, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultVal:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lcom/shawnlin/numberpicker/NumberPicker;->getValue()I

    move-result v0

    .line 190
    iget-object v1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$5;->this$0:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;

    iget-object v1, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemModel:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 206
    iget-object v1, v1, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val:Landroidx/databinding/ObservableInt;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 214
    invoke-virtual {v1, v0}, Landroidx/databinding/ObservableInt;->set(I)V

    :cond_2
    return-void
.end method
