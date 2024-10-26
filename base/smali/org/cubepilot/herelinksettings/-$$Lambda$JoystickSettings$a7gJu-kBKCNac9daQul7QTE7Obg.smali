.class public final synthetic Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a7gJu-kBKCNac9daQul7QTE7Obg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a7gJu-kBKCNac9daQul7QTE7Obg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a7gJu-kBKCNac9daQul7QTE7Obg;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a7gJu-kBKCNac9daQul7QTE7Obg;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a7gJu-kBKCNac9daQul7QTE7Obg;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$a7gJu-kBKCNac9daQul7QTE7Obg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->lambda$initViews$16(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
