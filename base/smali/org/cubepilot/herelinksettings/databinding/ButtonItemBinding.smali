.class public abstract Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ButtonItemBinding.java"


# instance fields
.field public final activeVal:Lcom/shawnlin/numberpicker/NumberPicker;

.field public final bus:Lcom/shawnlin/numberpicker/NumberPicker;

.field public final channel:Lcom/shawnlin/numberpicker/NumberPicker;

.field public final defaultButton:Landroid/widget/CheckBox;

.field public final defaultVal:Lcom/shawnlin/numberpicker/NumberPicker;

.field public final delete:Landroid/widget/ImageButton;

.field protected mItemModel:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mItemPresenter:Lorg/cubepilot/herelinksettings/ButtonSettings;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final txtActiveVal:Landroid/widget/TextView;

.field public final txtBus:Landroid/widget/TextView;

.field public final txtButtonName:Landroid/widget/TextView;

.field public final txtChannel:Landroid/widget/TextView;

.field public final txtDefaultVal:Landroid/widget/TextView;

.field public final txtMomentary:Landroid/widget/TextView;

.field public final txtToggle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/shawnlin/numberpicker/NumberPicker;Lcom/shawnlin/numberpicker/NumberPicker;Lcom/shawnlin/numberpicker/NumberPicker;Landroid/widget/CheckBox;Lcom/shawnlin/numberpicker/NumberPicker;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 73
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->activeVal:Lcom/shawnlin/numberpicker/NumberPicker;

    move-object v1, p5

    .line 74
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->bus:Lcom/shawnlin/numberpicker/NumberPicker;

    move-object v1, p6

    .line 75
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->channel:Lcom/shawnlin/numberpicker/NumberPicker;

    move-object v1, p7

    .line 76
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->defaultButton:Landroid/widget/CheckBox;

    move-object v1, p8

    .line 77
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->defaultVal:Lcom/shawnlin/numberpicker/NumberPicker;

    move-object v1, p9

    .line 78
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->delete:Landroid/widget/ImageButton;

    move-object v1, p10

    .line 79
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->txtActiveVal:Landroid/widget/TextView;

    move-object v1, p11

    .line 80
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->txtBus:Landroid/widget/TextView;

    move-object v1, p12

    .line 81
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->txtButtonName:Landroid/widget/TextView;

    move-object v1, p13

    .line 82
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->txtChannel:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 83
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->txtDefaultVal:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 84
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->txtMomentary:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 85
    iput-object v1, v0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->txtToggle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;
    .locals 1

    .line 142
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0020

    .line 154
    invoke-static {p1, p0, v0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;
    .locals 1

    .line 124
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;
    .locals 1

    .line 105
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0020

    .line 119
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0020

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;

    return-object p0
.end method


# virtual methods
.method public getItemModel()Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->mItemModel:Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;

    return-object v0
.end method

.method public getItemPresenter()Lorg/cubepilot/herelinksettings/ButtonSettings;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/cubepilot/herelinksettings/databinding/ButtonItemBinding;->mItemPresenter:Lorg/cubepilot/herelinksettings/ButtonSettings;

    return-object v0
.end method

.method public abstract setItemModel(Lorg/cubepilot/herelinksettings/ButtonSettings$ItemModel;)V
.end method

.method public abstract setItemPresenter(Lorg/cubepilot/herelinksettings/ButtonSettings;)V
.end method
