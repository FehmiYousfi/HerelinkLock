.class public Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;
.super Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;
.source "ButtonItemBindingImpl.java"

# interfaces
.implements Lorg/cubepilot/herelinksettings/generated/callback/OnClickListener$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;,
        Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private activeValvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private busvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private channelvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private defaultButtonandroidCheckedAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private defaultValvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

.field private final mCallback1:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private mItemModelToggleMomentaryAndroidViewViewOnClickListener:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl;

.field private mItemModelToggleToggleAndroidViewViewOnClickListener:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView7:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090218

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09021e

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09021b

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 221
    sget-object v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x9

    .line 224
    aget-object v4, p3, v4

    check-cast v4, Lcom/shawnlin/numberpicker/NumberPicker;

    const/16 v5, 0xb

    aget-object v5, p3, v5

    check-cast v5, Lcom/shawnlin/numberpicker/NumberPicker;

    const/16 v6, 0xa

    aget-object v6, p3, v6

    check-cast v6, Lcom/shawnlin/numberpicker/NumberPicker;

    const/16 v7, 0x8

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/CheckBox;

    const/4 v8, 0x6

    aget-object v8, p3, v8

    check-cast v8, Lcom/shawnlin/numberpicker/NumberPicker;

    const/4 v9, 0x2

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/ImageButton;

    const/16 v10, 0xc

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/16 v11, 0xe

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/TextView;

    const/4 v15, 0x1

    aget-object v12, p3, v15

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0xd

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x5

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/TextView;

    const/16 v16, 0x3

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v15, v16

    const/16 v16, 0x4

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x9

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/shawnlin/numberpicker/NumberPicker;Lcom/shawnlin/numberpicker/NumberPicker;Lcom/shawnlin/numberpicker/NumberPicker;Landroid/widget/CheckBox;Lcom/shawnlin/numberpicker/NumberPicker;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 34
    new-instance v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$1;-><init>(Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;)V

    iput-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->activeValvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 71
    new-instance v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$2;

    invoke-direct {v0, v1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$2;-><init>(Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;)V

    iput-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->busvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 108
    new-instance v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$3;

    invoke-direct {v0, v1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$3;-><init>(Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;)V

    iput-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->channelvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 145
    new-instance v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$4;

    invoke-direct {v0, v1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$4;-><init>(Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;)V

    iput-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultButtonandroidCheckedAttrChanged:Landroidx/databinding/InverseBindingListener;

    .line 182
    new-instance v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$5;

    invoke-direct {v0, v1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$5;-><init>(Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;)V

    iput-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultValvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

    const-wide/16 v2, -0x1

    .line 767
    iput-wide v2, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 239
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->activeVal:Lcom/shawnlin/numberpicker/NumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->setTag(Ljava/lang/Object;)V

    .line 240
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->bus:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->setTag(Ljava/lang/Object;)V

    .line 241
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->channel:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->setTag(Ljava/lang/Object;)V

    .line 242
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultVal:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v0, v2}, Lcom/shawnlin/numberpicker/NumberPicker;->setTag(Ljava/lang/Object;)V

    .line 244
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->delete:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 245
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    .line 246
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 247
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mboundView7:Landroid/widget/LinearLayout;

    .line 248
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mboundView7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 249
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtButtonName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 250
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtDefaultVal:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 251
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtMomentary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 252
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtToggle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 253
    invoke-virtual {v1, v0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 255
    new-instance v0, Lorg/cubepilot/herelinksettings/generated/callback/OnClickListener;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/cubepilot/herelinksettings/generated/callback/OnClickListener;-><init>(Lorg/cubepilot/herelinksettings/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    .line 256
    invoke-virtual/range {p0 .. p0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeItemModelActiveVal(Landroidx/databinding/ObservableInt;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 337
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

.method private onChangeItemModelChannel(Landroidx/databinding/ObservableInt;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 373
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

.method private onChangeItemModelChannelMin(Landroidx/databinding/ObservableInt;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 364
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

.method private onChangeItemModelDefaultButton(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 353
    monitor-enter p0

    .line 354
    :try_start_0
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 355
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

.method private onChangeItemModelDefaultVal(Landroidx/databinding/ObservableInt;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 389
    monitor-enter p0

    .line 390
    :try_start_0
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 391
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

.method private onChangeItemModelDefaultValVisible(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 346
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

.method private onChangeItemModelMomentary(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 409
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

.method private onChangeItemModelSbus(Landroidx/databinding/ObservableInt;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 398
    monitor-enter p0

    .line 399
    :try_start_0
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 400
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

.method private onChangeItemModelToggle(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 380
    monitor-enter p0

    .line 381
    :try_start_0
    iget-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 382
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
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    .line 750
    iget-object p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemModel:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    .line 754
    iget-object p2, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemPresenter:Lorg/cubepilot/herelinksettings/ButtonSettings;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {p2, p1}, Lorg/cubepilot/herelinksettings/ButtonSettings;->onDeleteClick(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 45

    move-object/from16 v1, p0

    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iget-wide v2, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 420
    iput-wide v4, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 421
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemModel:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    .line 443
    iget-object v6, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemPresenter:Lorg/cubepilot/herelinksettings/ButtonSettings;

    const-wide/16 v6, 0xbff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v15, 0xa04

    const-wide/16 v17, 0xa08

    const-wide/16 v19, 0xa00

    const-wide/16 v21, 0xa80

    const-wide/16 v23, 0xa02

    const-wide/16 v25, 0xa01

    const/16 v27, 0x0

    const/4 v7, 0x0

    if-eqz v6, :cond_2a

    and-long v30, v2, v25

    cmp-long v6, v30, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    .line 460
    iget-object v6, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->active_val:Landroidx/databinding/ObservableInt;

    goto :goto_0

    :cond_0
    move-object/from16 v6, v27

    .line 462
    :goto_0
    invoke-virtual {v1, v7, v6}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_1

    .line 467
    invoke-virtual {v6}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    and-long v30, v2, v23

    cmp-long v8, v30, v4

    if-eqz v8, :cond_9

    if-eqz v0, :cond_2

    .line 474
    iget-object v7, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val_visible:Landroidx/databinding/ObservableBoolean;

    goto :goto_2

    :cond_2
    move-object/from16 v7, v27

    :goto_2
    const/4 v9, 0x1

    .line 476
    invoke-virtual {v1, v9, v7}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_3

    .line 481
    invoke-virtual {v7}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v8, :cond_5

    if-eqz v7, :cond_4

    const-wide/16 v8, 0x2000

    or-long/2addr v2, v8

    const-wide/32 v8, 0x20000

    or-long/2addr v2, v8

    const-wide/32 v8, 0x200000

    goto :goto_4

    :cond_4
    const-wide/16 v8, 0x1000

    or-long/2addr v2, v8

    const-wide/32 v8, 0x10000

    or-long/2addr v2, v8

    const-wide/32 v8, 0x100000

    :goto_4
    or-long/2addr v2, v8

    .line 498
    :cond_5
    iget-object v8, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtDefaultVal:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v7, :cond_6

    const v9, 0x7f1000c4

    goto :goto_5

    :cond_6
    const v9, 0x7f1000c3

    :goto_5
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_7

    const/16 v9, 0x8

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    if-eqz v7, :cond_8

    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    const/16 v7, 0x8

    :goto_7
    move/from16 v44, v9

    move v9, v7

    move/from16 v7, v44

    goto :goto_8

    :cond_9
    move-object/from16 v8, v27

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_8
    and-long v34, v2, v19

    cmp-long v10, v34, v4

    if-eqz v10, :cond_10

    if-eqz v0, :cond_c

    .line 508
    iget-object v12, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->item:Ljava/lang/String;

    .line 510
    iget-object v11, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemModelToggleMomentaryAndroidViewViewOnClickListener:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl;

    if-nez v11, :cond_a

    new-instance v11, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl;

    invoke-direct {v11}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v11, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemModelToggleMomentaryAndroidViewViewOnClickListener:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl;

    :cond_a
    invoke-virtual {v11, v0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl;->setValue(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl;

    move-result-object v11

    .line 512
    iget-object v13, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemModelToggleToggleAndroidViewViewOnClickListener:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;

    if-nez v13, :cond_b

    new-instance v13, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;

    invoke-direct {v13}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v13, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemModelToggleToggleAndroidViewViewOnClickListener:Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;

    :cond_b
    invoke-virtual {v13, v0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;->setValue(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl$OnClickListenerImpl1;

    move-result-object v13

    goto :goto_9

    :cond_c
    move-object/from16 v11, v27

    move-object v12, v11

    move-object v13, v12

    :goto_9
    if-eqz v12, :cond_d

    const-string v14, "long"

    .line 518
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    goto :goto_a

    :cond_d
    const/4 v14, 0x0

    :goto_a
    if-eqz v10, :cond_f

    if-eqz v14, :cond_e

    const-wide/32 v37, 0x80000

    goto :goto_b

    :cond_e
    const-wide/32 v37, 0x40000

    :goto_b
    or-long v2, v2, v37

    :cond_f
    if-eqz v14, :cond_11

    const/4 v10, 0x4

    goto :goto_c

    :cond_10
    move-object/from16 v11, v27

    move-object v12, v11

    move-object v13, v12

    :cond_11
    const/4 v10, 0x0

    :goto_c
    and-long v37, v2, v15

    cmp-long v14, v37, v4

    if-eqz v14, :cond_13

    if-eqz v0, :cond_12

    .line 537
    iget-object v14, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_button:Landroidx/databinding/ObservableBoolean;

    goto :goto_d

    :cond_12
    move-object/from16 v14, v27

    :goto_d
    const/4 v15, 0x2

    .line 539
    invoke-virtual {v1, v15, v14}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_13

    .line 544
    invoke-virtual {v14}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v14

    goto :goto_e

    :cond_13
    const/4 v14, 0x0

    :goto_e
    and-long v15, v2, v17

    cmp-long v15, v15, v4

    if-eqz v15, :cond_15

    if-eqz v0, :cond_14

    .line 551
    iget-object v15, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->channel_min:Landroidx/databinding/ObservableInt;

    goto :goto_f

    :cond_14
    move-object/from16 v15, v27

    :goto_f
    const/4 v4, 0x3

    .line 553
    invoke-virtual {v1, v4, v15}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_15

    .line 558
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_10

    :cond_15
    const/4 v4, 0x0

    :goto_10
    const-wide/16 v15, 0xa10

    and-long v41, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v5, v41, v15

    if-eqz v5, :cond_17

    if-eqz v0, :cond_16

    .line 565
    iget-object v5, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->channel:Landroidx/databinding/ObservableInt;

    goto :goto_11

    :cond_16
    move-object/from16 v5, v27

    :goto_11
    const/4 v15, 0x4

    .line 567
    invoke-virtual {v1, v15, v5}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_17

    .line 572
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_12

    :cond_17
    const/4 v5, 0x0

    :goto_12
    const-wide/16 v15, 0xa20

    and-long v41, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v36, v41, v15

    if-eqz v36, :cond_1d

    if-eqz v0, :cond_18

    .line 579
    iget-object v15, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->toggle:Landroidx/databinding/ObservableBoolean;

    move/from16 v16, v4

    goto :goto_13

    :cond_18
    move/from16 v16, v4

    move-object/from16 v15, v27

    :goto_13
    const/4 v4, 0x5

    .line 581
    invoke-virtual {v1, v4, v15}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_19

    .line 586
    invoke-virtual {v15}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_14

    :cond_19
    const/4 v4, 0x0

    :goto_14
    if-eqz v36, :cond_1b

    if-eqz v4, :cond_1a

    const-wide/32 v41, 0x800000

    goto :goto_15

    :cond_1a
    const-wide/32 v41, 0x400000

    :goto_15
    or-long v2, v2, v41

    :cond_1b
    if-eqz v4, :cond_1c

    .line 599
    iget-object v4, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtToggle:Landroid/widget/TextView;

    const v15, 0x7f06002e

    goto :goto_16

    :cond_1c
    iget-object v4, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtToggle:Landroid/widget/TextView;

    const v15, 0x7f0600aa

    :goto_16
    invoke-static {v4, v15}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v4

    goto :goto_17

    :cond_1d
    move/from16 v16, v4

    const/4 v4, 0x0

    :goto_17
    const-wide/16 v32, 0xa40

    and-long v41, v2, v32

    const-wide/16 v39, 0x0

    cmp-long v15, v41, v39

    if-eqz v15, :cond_1f

    if-eqz v0, :cond_1e

    .line 605
    iget-object v15, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->default_val:Landroidx/databinding/ObservableInt;

    move/from16 v36, v4

    goto :goto_18

    :cond_1e
    move/from16 v36, v4

    move-object/from16 v15, v27

    :goto_18
    const/4 v4, 0x6

    .line 607
    invoke-virtual {v1, v4, v15}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_20

    .line 612
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_19

    :cond_1f
    move/from16 v36, v4

    :cond_20
    const/4 v4, 0x0

    :goto_19
    and-long v41, v2, v21

    const-wide/16 v39, 0x0

    cmp-long v15, v41, v39

    if-eqz v15, :cond_22

    if-eqz v0, :cond_21

    .line 619
    iget-object v15, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->sbus:Landroidx/databinding/ObservableInt;

    move/from16 v41, v4

    goto :goto_1a

    :cond_21
    move/from16 v41, v4

    move-object/from16 v15, v27

    :goto_1a
    const/4 v4, 0x7

    .line 621
    invoke-virtual {v1, v4, v15}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_23

    .line 626
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_1b

    :cond_22
    move/from16 v41, v4

    :cond_23
    const/4 v4, 0x0

    :goto_1b
    const-wide/16 v28, 0xb00

    and-long v42, v2, v28

    const-wide/16 v39, 0x0

    cmp-long v15, v42, v39

    if-eqz v15, :cond_29

    if-eqz v0, :cond_24

    .line 633
    iget-object v0, v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;->momentary:Landroidx/databinding/ObservableBoolean;

    move/from16 v31, v4

    goto :goto_1c

    :cond_24
    move/from16 v31, v4

    move-object/from16 v0, v27

    :goto_1c
    const/16 v4, 0x8

    .line 635
    invoke-virtual {v1, v4, v0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_25

    .line 640
    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    goto :goto_1d

    :cond_25
    const/4 v0, 0x0

    :goto_1d
    if-eqz v15, :cond_27

    if-eqz v0, :cond_26

    const-wide/32 v42, 0x8000

    goto :goto_1e

    :cond_26
    const-wide/16 v42, 0x4000

    :goto_1e
    or-long v2, v2, v42

    :cond_27
    if-eqz v0, :cond_28

    .line 653
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtMomentary:Landroid/widget/TextView;

    const v4, 0x7f06002e

    goto :goto_1f

    :cond_28
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtMomentary:Landroid/widget/TextView;

    const v4, 0x7f0600aa

    :goto_1f
    invoke-static {v0, v4}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    move/from16 v30, v0

    move-object v15, v13

    move/from16 v4, v16

    move/from16 v0, v31

    goto :goto_20

    :cond_29
    move/from16 v31, v4

    move-object v15, v13

    move/from16 v4, v16

    move/from16 v0, v31

    const/16 v30, 0x0

    :goto_20
    move-object v13, v11

    move v11, v10

    move/from16 v10, v41

    goto :goto_21

    :cond_2a
    move-object/from16 v8, v27

    move-object v12, v8

    move-object v13, v12

    move-object v15, v13

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v30, 0x0

    const/16 v36, 0x0

    :goto_21
    and-long v25, v2, v25

    const-wide/16 v39, 0x0

    cmp-long v16, v25, v39

    if-eqz v16, :cond_2b

    move-object/from16 v16, v15

    .line 660
    iget-object v15, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->activeVal:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v15, v6}, Lcom/shawnlin/numberpicker/NumberPicker;->setValue(I)V

    goto :goto_22

    :cond_2b
    move-object/from16 v16, v15

    :goto_22
    const-wide/16 v25, 0x800

    and-long v25, v2, v25

    cmp-long v6, v25, v39

    if-eqz v6, :cond_2c

    .line 665
    iget-object v6, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->activeVal:Lcom/shawnlin/numberpicker/NumberPicker;

    iget-object v15, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->activeValvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v6, v15}, Lorg/cubepilot/herelinksettings/util/NumberPickerBindingAdapters;->setListeners(Lcom/shawnlin/numberpicker/NumberPicker;Landroidx/databinding/InverseBindingListener;)V

    .line 666
    iget-object v6, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->bus:Lcom/shawnlin/numberpicker/NumberPicker;

    iget-object v15, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->busvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v6, v15}, Lorg/cubepilot/herelinksettings/util/NumberPickerBindingAdapters;->setListeners(Lcom/shawnlin/numberpicker/NumberPicker;Landroidx/databinding/InverseBindingListener;)V

    .line 667
    iget-object v6, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->channel:Lcom/shawnlin/numberpicker/NumberPicker;

    iget-object v15, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->channelvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v6, v15}, Lorg/cubepilot/herelinksettings/util/NumberPickerBindingAdapters;->setListeners(Lcom/shawnlin/numberpicker/NumberPicker;Landroidx/databinding/InverseBindingListener;)V

    .line 668
    iget-object v6, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultButton:Landroid/widget/CheckBox;

    move-object/from16 v15, v27

    check-cast v15, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v25, v13

    iget-object v13, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultButtonandroidCheckedAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v6, v15, v13}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V

    .line 669
    iget-object v6, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultVal:Lcom/shawnlin/numberpicker/NumberPicker;

    iget-object v13, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultValvalueAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-static {v6, v13}, Lorg/cubepilot/herelinksettings/util/NumberPickerBindingAdapters;->setListeners(Lcom/shawnlin/numberpicker/NumberPicker;Landroidx/databinding/InverseBindingListener;)V

    .line 670
    iget-object v6, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->delete:Landroid/widget/ImageButton;

    iget-object v13, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_23

    :cond_2c
    move-object/from16 v25, v13

    :goto_23
    and-long v21, v2, v21

    const-wide/16 v26, 0x0

    cmp-long v6, v21, v26

    if-eqz v6, :cond_2d

    .line 675
    iget-object v6, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->bus:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v6, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setValue(I)V

    :cond_2d
    and-long v17, v2, v17

    cmp-long v0, v17, v26

    if-eqz v0, :cond_2e

    .line 680
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->channel:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v0, v4}, Lcom/shawnlin/numberpicker/NumberPicker;->setMinValue(I)V

    :cond_2e
    const-wide/16 v17, 0xa10

    and-long v17, v2, v17

    cmp-long v0, v17, v26

    if-eqz v0, :cond_2f

    .line 685
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->channel:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v0, v5}, Lcom/shawnlin/numberpicker/NumberPicker;->setValue(I)V

    :cond_2f
    const-wide/16 v4, 0xa04

    and-long/2addr v4, v2

    cmp-long v0, v4, v26

    if-eqz v0, :cond_30

    .line 690
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultButton:Landroid/widget/CheckBox;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    :cond_30
    and-long v4, v2, v23

    cmp-long v0, v4, v26

    if-eqz v0, :cond_31

    .line 695
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultVal:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v0, v9}, Lcom/shawnlin/numberpicker/NumberPicker;->setVisibility(I)V

    .line 696
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mboundView7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 697
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtDefaultVal:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_31
    const-wide/16 v4, 0xa40

    and-long/2addr v4, v2

    cmp-long v0, v4, v26

    if-eqz v0, :cond_32

    .line 702
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->defaultVal:Lcom/shawnlin/numberpicker/NumberPicker;

    invoke-virtual {v0, v10}, Lcom/shawnlin/numberpicker/NumberPicker;->setValue(I)V

    :cond_32
    and-long v4, v2, v19

    cmp-long v0, v4, v26

    if-eqz v0, :cond_33

    .line 707
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtButtonName:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 708
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtMomentary:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtMomentary:Landroid/widget/TextView;

    move-object/from16 v11, v25

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtToggle:Landroid/widget/TextView;

    move-object/from16 v13, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_33
    const-wide/16 v4, 0xb00

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_34

    .line 715
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtMomentary:Landroid/widget/TextView;

    invoke-static/range {v30 .. v30}, Landroidx/databinding/adapters/Converters;->convertColorToDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v4

    invoke-static {v0, v4}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_34
    const-wide/16 v4, 0xa20

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_35

    .line 720
    iget-object v0, v1, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->txtToggle:Landroid/widget/TextView;

    invoke-static/range {v36 .. v36}, Landroidx/databinding/adapters/Converters;->convertColorToDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_35
    return-void

    :catchall_0
    move-exception v0

    .line 421
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 271
    monitor-exit p0

    return v0

    .line 273
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

    .line 261
    monitor-enter p0

    const-wide/16 v0, 0x800

    .line 262
    :try_start_0
    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 263
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-virtual {p0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 263
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 329
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->onChangeItemModelMomentary(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 327
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->onChangeItemModelSbus(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 325
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->onChangeItemModelDefaultVal(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 323
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->onChangeItemModelToggle(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 321
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->onChangeItemModelChannel(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 319
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->onChangeItemModelChannelMin(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 317
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->onChangeItemModelDefaultButton(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 315
    :pswitch_7
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->onChangeItemModelDefaultValVisible(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 313
    :pswitch_8
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->onChangeItemModelActiveVal(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setItemModel(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;)V
    .locals 4

    .line 293
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemModel:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 296
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 297
    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->notifyPropertyChanged(I)V

    .line 298
    invoke-super {p0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 296
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setItemPresenter(Lorg/cubepilot/herelinksettings/ButtonSettings;)V
    .locals 4

    .line 301
    iput-object p1, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mItemPresenter:Lorg/cubepilot/herelinksettings/ButtonSettings;

    .line 302
    monitor-enter p0

    .line 303
    :try_start_0
    iget-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->mDirtyFlags:J

    .line 304
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 305
    invoke-virtual {p0, p1}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->notifyPropertyChanged(I)V

    .line 306
    invoke-super {p0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 304
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 281
    check-cast p2, Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    invoke-virtual {p0, p2}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->setItemModel(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 284
    check-cast p2, Lorg/cubepilot/herelinksettings/ButtonSettings;

    invoke-virtual {p0, p2}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBindingImpl;->setItemPresenter(Lorg/cubepilot/herelinksettings/ButtonSettings;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
