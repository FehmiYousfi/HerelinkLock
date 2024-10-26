.class public Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ButtonsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/ButtonsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BindingViewHolder"
.end annotation


# instance fields
.field public binding:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

.field final synthetic this$0:Lorg/cubepilot/herelinksettings/ButtonsAdapter;


# direct methods
.method public constructor <init>(Lorg/cubepilot/herelinksettings/ButtonsAdapter;Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;->this$0:Lorg/cubepilot/herelinksettings/ButtonsAdapter;

    .line 125
    invoke-virtual {p2}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 126
    iput-object p2, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;->binding:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

    return-void
.end method


# virtual methods
.method public bind(ILjava/lang/Object;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;->binding:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

    invoke-virtual {v0, p1, p2}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->setVariable(ILjava/lang/Object;)Z

    return-void
.end method
