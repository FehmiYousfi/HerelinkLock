.class public final synthetic Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rwNnzLJxLwhJZmfqV65QELo8SZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;


# instance fields
.field private final synthetic f$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/cubepilot/herelinksettings/JoystickSettings;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rwNnzLJxLwhJZmfqV65QELo8SZg;->f$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    iput p2, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rwNnzLJxLwhJZmfqV65QELo8SZg;->f$1:I

    iput-object p3, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rwNnzLJxLwhJZmfqV65QELo8SZg;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onValueChange(Lcom/shawnlin/numberpicker/NumberPicker;II)V
    .locals 6

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rwNnzLJxLwhJZmfqV65QELo8SZg;->f$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    iget v1, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rwNnzLJxLwhJZmfqV65QELo8SZg;->f$1:I

    iget-object v2, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$rwNnzLJxLwhJZmfqV65QELo8SZg;->f$2:Ljava/lang/String;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/cubepilot/herelinksettings/JoystickSettings;->lambda$SetExpoBounds$53$JoystickSettings(ILjava/lang/String;Lcom/shawnlin/numberpicker/NumberPicker;II)V

    return-void
.end method
