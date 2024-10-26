.class public Lorg/cubepilot/herelinksettings/util/NumberPickerBindingAdapters;
.super Ljava/lang/Object;
.source "NumberPickerBindingAdapters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$setListeners$0(Landroidx/databinding/InverseBindingListener;Lcom/shawnlin/numberpicker/NumberPicker;II)V
    .locals 0

    .line 47
    invoke-interface {p0}, Landroidx/databinding/InverseBindingListener;->onChange()V

    return-void
.end method

.method public static setListeners(Lcom/shawnlin/numberpicker/NumberPicker;Landroidx/databinding/InverseBindingListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 46
    new-instance v0, Lorg/cubepilot/herelinksettings/util/-$$Lambda$NumberPickerBindingAdapters$1FwEdtJFn-V_0CV5lp9gMcpEn3Y;

    invoke-direct {v0, p1}, Lorg/cubepilot/herelinksettings/util/-$$Lambda$NumberPickerBindingAdapters$1FwEdtJFn-V_0CV5lp9gMcpEn3Y;-><init>(Landroidx/databinding/InverseBindingListener;)V

    invoke-virtual {p0, v0}, Lcom/shawnlin/numberpicker/NumberPicker;->setOnValueChangedListener(Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;)V

    :cond_0
    return-void
.end method
