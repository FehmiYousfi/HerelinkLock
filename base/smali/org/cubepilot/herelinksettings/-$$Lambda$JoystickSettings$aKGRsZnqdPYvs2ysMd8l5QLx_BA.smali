.class public final synthetic Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$aKGRsZnqdPYvs2ysMd8l5QLx_BA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$aKGRsZnqdPYvs2ysMd8l5QLx_BA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$aKGRsZnqdPYvs2ysMd8l5QLx_BA;

    invoke-direct {v0}, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$aKGRsZnqdPYvs2ysMd8l5QLx_BA;-><init>()V

    sput-object v0, Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$aKGRsZnqdPYvs2ysMd8l5QLx_BA;->INSTANCE:Lorg/cubepilot/herelinksettings/-$$Lambda$JoystickSettings$aKGRsZnqdPYvs2ysMd8l5QLx_BA;

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

    invoke-static {p1, p2}, Lorg/cubepilot/herelinksettings/JoystickSettings;->lambda$initViews$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method