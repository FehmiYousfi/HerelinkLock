.class Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;
.super Landroidx/databinding/ObservableList$OnListChangedCallback;
.source "ButtonsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/ButtonsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObservableListCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/ObservableList$OnListChangedCallback<",
        "Landroidx/databinding/ObservableList<",
        "Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cubepilot/herelinksettings/ButtonsAdapter;


# direct methods
.method private constructor <init>(Lorg/cubepilot/herelinksettings/ButtonsAdapter;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;->this$0:Lorg/cubepilot/herelinksettings/ButtonsAdapter;

    invoke-direct {p0}, Landroidx/databinding/ObservableList$OnListChangedCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cubepilot/herelinksettings/ButtonsAdapter;Lorg/cubepilot/herelinksettings/ButtonsAdapter$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;-><init>(Lorg/cubepilot/herelinksettings/ButtonsAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged(Landroidx/databinding/ObservableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableList<",
            "Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;->this$0:Lorg/cubepilot/herelinksettings/ButtonsAdapter;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(Landroidx/databinding/ObservableList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableList<",
            "Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;",
            ">;II)V"
        }
    .end annotation

    .line 101
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;->this$0:Lorg/cubepilot/herelinksettings/ButtonsAdapter;

    invoke-virtual {p1, p2, p3}, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(Landroidx/databinding/ObservableList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableList<",
            "Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;",
            ">;II)V"
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;->this$0:Lorg/cubepilot/herelinksettings/ButtonsAdapter;

    invoke-virtual {p1, p2, p3}, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(Landroidx/databinding/ObservableList;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableList<",
            "Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;",
            ">;III)V"
        }
    .end annotation

    .line 111
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;->this$0:Lorg/cubepilot/herelinksettings/ButtonsAdapter;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeRemoved(Landroidx/databinding/ObservableList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableList<",
            "Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;",
            ">;II)V"
        }
    .end annotation

    .line 116
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;->this$0:Lorg/cubepilot/herelinksettings/ButtonsAdapter;

    invoke-virtual {p1, p2, p3}, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
