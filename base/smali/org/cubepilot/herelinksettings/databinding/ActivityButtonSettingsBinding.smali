.class public abstract Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityButtonSettingsBinding.java"


# instance fields
.field public final btnDoAdd:Landroid/widget/Button;

.field public final btnDoLoad:Landroid/widget/Button;

.field public final btnDoNew:Landroid/widget/Button;

.field public final btnDoSave:Landroid/widget/Button;

.field public final buttonList:Landroidx/recyclerview/widget/RecyclerView;

.field public final buttonListLayout:Landroid/widget/LinearLayout;

.field public final buttonSelect:Landroid/widget/Spinner;

.field public final layoutMain:Landroid/widget/LinearLayout;

.field public final layoutTop:Landroid/widget/LinearLayout;

.field protected mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mModelList:Landroidx/databinding/ObservableList;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tvFileName:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 68
    iput-object p4, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->btnDoAdd:Landroid/widget/Button;

    .line 69
    iput-object p5, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->btnDoLoad:Landroid/widget/Button;

    .line 70
    iput-object p6, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->btnDoNew:Landroid/widget/Button;

    .line 71
    iput-object p7, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->btnDoSave:Landroid/widget/Button;

    .line 72
    iput-object p8, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->buttonList:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iput-object p9, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->buttonListLayout:Landroid/widget/LinearLayout;

    .line 74
    iput-object p10, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->buttonSelect:Landroid/widget/Spinner;

    .line 75
    iput-object p11, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->layoutMain:Landroid/widget/LinearLayout;

    .line 76
    iput-object p12, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->layoutTop:Landroid/widget/LinearLayout;

    .line 77
    iput-object p13, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->tvFileName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;
    .locals 1

    .line 141
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c001c

    .line 153
    invoke-static {p1, p0, v0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;
    .locals 1

    .line 123
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;
    .locals 1

    .line 104
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c001c

    .line 118
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c001c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;

    return-object p0
.end method


# virtual methods
.method public getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method public getListLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->mListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public getModelList()Landroidx/databinding/ObservableList;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->mModelList:Landroidx/databinding/ObservableList;

    return-object v0
.end method

.method public abstract setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
.end method

.method public abstract setListLayoutManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V
.end method

.method public abstract setModelList(Landroidx/databinding/ObservableList;)V
.end method
