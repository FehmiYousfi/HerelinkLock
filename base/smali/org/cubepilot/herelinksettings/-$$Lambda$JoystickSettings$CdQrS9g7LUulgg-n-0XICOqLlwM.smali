.class public final synthetic Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$CdQrS9g7LUulgg-n-0XICOqLlwM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/shawnlin/numberpicker/NumberPicker$OnValueChangeListener;


# instance fields
.field private final synthetic f$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/cubepilot/herelinksettings/JoystickSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$CdQrS9g7LUulgg-n-0XICOqLlwM;->f$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    iput p2, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$CdQrS9g7LUulgg-n-0XICOqLlwM;->f$1:I

    return-void
.end method


# virtual methods
.method public final onValueChange(Lcom/shawnlin/numberpicker/NumberPicker;II)V
    .locals 2

    iget-object v0, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$CdQrS9g7LUulgg-n-0XICOqLlwM;->f$0:Lorg/cubepilot/herelinksettings/JoystickSettings;

    iget v1, p0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$CdQrS9g7LUulgg-n-0XICOqLlwM;->f$1:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/cubepilot/herelinksettings/JoystickSettings;->lambda$SetAuxChannelBounds$51$JoystickSettings(ILcom/shawnlin/numberpicker/NumberPicker;II)V

    return-void
.end method
