.class public Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;
.super Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;
.source "ActivityButtonSettingsBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900e3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900e5

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09006d

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09004f

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090054

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090053

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090055

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09020d

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09006c

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 36
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15

    move-object v14, p0

    const/4 v0, 0x5

    .line 39
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Spinner;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const/4 v3, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 162
    iput-wide v0, v14, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    .line 51
    iget-object v0, v14, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->buttonList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 52
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v14, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 53
    iget-object v0, v14, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 54
    invoke-virtual {p0, v0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelList(Landroidx/databinding/ObservableList;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    .line 133
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 9

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 144
    iput-wide v2, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v4, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 147
    iget-object v5, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mModelList:Landroidx/databinding/ObservableList;

    .line 148
    iget-object v6, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const-wide/16 v7, 0xf

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->buttonList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v5, v6, v4}, Lorg/cubepilot/herelinksettings/ButtonSettings;->setList(Landroidx/recyclerview/widget/RecyclerView;Landroidx/databinding/ObservableList;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 145
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 71
    monitor-exit p0

    return v0

    .line 73
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 61
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 62
    :try_start_0
    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 63
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableList;

    invoke-direct {p0, p2, p3}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->onChangeModelList(Landroidx/databinding/ObservableList;I)Z

    move-result p1

    return p1
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 4

    .line 96
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 100
    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->notifyPropertyChanged(I)V

    .line 101
    invoke-super {p0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 99
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setListLayoutManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 4

    .line 113
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->notifyPropertyChanged(I)V

    .line 118
    invoke-super {p0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 116
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setModelList(Landroidx/databinding/ObservableList;)V
    .locals 4

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0, p1}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->updateRegistration(ILandroidx/databinding/ObservableList;)Z

    .line 105
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mModelList:Landroidx/databinding/ObservableList;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 109
    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->notifyPropertyChanged(I)V

    .line 110
    invoke-super {p0}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 81
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p0, p2}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 84
    check-cast p2, Landroidx/databinding/ObservableList;

    invoke-virtual {p0, p2}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->setModelList(Landroidx/databinding/ObservableList;)V

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    .line 87
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p2}, Lorg/cubepilot/herelinksettings/databinding/ActivityButtonSettingsBindingImpl;->setListLayoutManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
