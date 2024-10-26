.class Lorg/cubepilot/herelinksettings/ButtonsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ButtonsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;,
        Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;,
        Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Landroidx/databinding/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableList<",
            "Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private rcValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/databinding/ObservableList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableList<",
            "Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->data:Landroidx/databinding/ObservableList;

    .line 24
    new-instance v0, Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/cubepilot/herelinksettings/ButtonsAdapter$ObservableListCallback;-><init>(Lorg/cubepilot/herelinksettings/ButtonsAdapter;Lorg/cubepilot/herelinksettings/ButtonsAdapter$1;)V

    invoke-interface {p1, v0}, Landroidx/databinding/ObservableList;->addOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->data:Landroidx/databinding/ObservableList;

    invoke-interface {v0}, Landroidx/databinding/ObservableList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->data:Landroidx/databinding/ObservableList;

    invoke-interface {v0, p1}, Landroidx/databinding/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;

    iget p1, p1, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->layoutId:I

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->onBindViewHolder(Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;I)V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->data:Landroidx/databinding/ObservableList;

    invoke-interface {v0, p2}, Landroidx/databinding/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;

    .line 76
    iget-object p2, p2, Lorg/cubepilot/herelinksettings/ButtonsAdapter$AdapterDataItem;->idModelPairs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 77
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;->bind(ILjava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p1, Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;->binding:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->executePendingBindings()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;
    .locals 7

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

    .line 31
    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09009f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/shawnlin/numberpicker/NumberPicker;

    .line 32
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->rcValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x3e9

    new-array v2, v0, [Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->rcValues:[Ljava/lang/String;

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 35
    iget-object v3, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->rcValues:[Ljava/lang/String;

    add-int/lit16 v4, v2, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->rcValues:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 39
    invoke-virtual {p2, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    const/16 v2, 0x7d0

    .line 40
    invoke-virtual {p2, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxValue(I)V

    const/4 v3, 0x1

    .line 41
    invoke-virtual {p2, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxFlingVelocityCoefficient(I)V

    const-wide/16 v4, 0x1

    .line 42
    invoke-virtual {p2, v4, v5}, Lcom/shawnlin/numberpicker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 43
    invoke-virtual {p2, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 45
    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    const v6, 0x7f090040

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/shawnlin/numberpicker/NumberPicker;

    .line 46
    iget-object v6, p0, Lorg/cubepilot/herelinksettings/ButtonsAdapter;->rcValues:[Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/shawnlin/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    .line 48
    invoke-virtual {p2, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 49
    invoke-virtual {p2, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxFlingVelocityCoefficient(I)V

    .line 50
    invoke-virtual {p2, v4, v5}, Lcom/shawnlin/numberpicker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 51
    invoke-virtual {p2, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 52
    invoke-virtual {p2, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->setFocusable(Z)V

    .line 57
    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/shawnlin/numberpicker/NumberPicker;

    .line 59
    invoke-virtual {p2, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    const/16 v0, 0x10

    .line 60
    invoke-virtual {p2, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 61
    invoke-virtual {p2, v1}, Lcom/shawnlin/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 65
    invoke-virtual {p1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090059

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/shawnlin/numberpicker/NumberPicker;

    .line 67
    invoke-virtual {p2, v3}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    const/4 v0, 0x2

    .line 68
    invoke-virtual {p2, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 70
    new-instance p2, Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;

    invoke-direct {p2, p0, p1}, Lorg/cubepilot/herelinksettings/ButtonsAdapter$BindingViewHolder;-><init>(Lorg/cubepilot/herelinksettings/ButtonsAdapter;Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;)V

    return-object p2
.end method
