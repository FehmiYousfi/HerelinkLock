.class public Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;
.super Ljava/lang/Object;
.source "ButtonItemBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickListenerImpl1"
.end annotation


# instance fields
.field private value:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 743
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;->value:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    invoke-virtual {v0, p1}, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggleToggle(Landroid/view/View;)V

    return-void
.end method

.method public setValue(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;
    .locals 0

    .line 738
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;->value:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method
